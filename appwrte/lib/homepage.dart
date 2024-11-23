
import 'package:appwrite/models.dart';
import 'package:appwrte/services/appwriteservice.dart';
import 'package:appwrte/todo.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  TextEditingController _controller = TextEditingController();
  late AppwriteService _appwriteService;
  List? _task;





  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _appwriteService = AppwriteService();
    _loadTasks();
    _task =[];
  }

  Future<void>_addtask()async{
    final task = _controller.text;

    if(task.isNotEmpty){
      try{
        await _appwriteService.addTask(task);
        _controller.clear();

      }catch(e){
        print(e);
      }
    }
  }


  Future<void>_loadTasks()async{
    try {
      final tasks= await _appwriteService.getTask();
      setState(() {
        _task=tasks.map((e)=>Task.formDocument(e)).toList();
        print("###############################################");
      });
    } catch (e) {
      print(e);
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TodoList"),
      ),
      body: Container(
       child: 
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: 20,right: 50),
                      child: Expanded(child: TextField(controller: _controller,
                        
                      )
                      ),
                    ),
                   ElevatedButton(onPressed: (){
                      _addtask();
                   }, child: Text("add"))
                  ],
                ),
                Container(
                  child: Expanded(child: ListView.builder(
                                
                    itemCount: _task!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onLongPress: () {
                          final documentId=_task![index].id;
                          print(documentId);
                          _appwriteService.delete(documentId);
                          _loadTasks();
                        },
                        title: Text(_task![index].task.toString()),
                      );
                    },)
                    ),
                )
              ],
            ),
          ),
          
          
       
      ),
    );
  }
}