import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
 List<dynamic>ls=["hy","hello","hai"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("HOMEPAGE")),
      
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(child: 
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder()
                  ),
                )),
                Container(
                  child: TextButton(onPressed: (){}, 
                  child: Text("ADD")),
                )
              ],
            ),
          ),
          
          SizedBox(height: 20,),
          Expanded(
            child:ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index){
                return ListTile(
                   title: Text('${ls[index]}'),
                );
              }) )
        ],
      ),
      // floatingActionButton: FloatingActionButton(onPressed: (){
      //   // setState(() {
         
      //   // });
      // },child: Icon(Icons.add),
      // ),
    );
  }
}