import 'package:chatproject/provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

class Chatpage extends StatefulWidget {
  const Chatpage({super.key});

  @override
  State<Chatpage> createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
   TextEditingController _message = TextEditingController();

    final mybox = Hive.box('mybox');

    // String? sender;
    // String? receiver;

    // void get_id(){
    //   sender = mybox.get(1);
    //   receiver = mybox.get(2);
    // }

    Future<void> add(String sender, String receiver, String message) async {
      FirebaseFirestore.instance.collection("messages").add({
        "sender": sender,
        "receiver": receiver,
        "message": message.trim(),
        "timestamp": FieldValue.serverTimestamp(),
      });
      setState(() {
        _message.clear();
      });    
    }


    Stream<QuerySnapshot> getMessages(String sender, String receiver) {
      return FirebaseFirestore.instance
          .collection("messages")
          .where("sender", whereIn: [sender, receiver])
          .where("receiver", whereIn: [sender, receiver])
          .orderBy("timestamp", descending: false)
          .snapshots();
    }
  
  @override
  Widget build(BuildContext context) {
    final String sender=Provider.of<Prov>(context).uid.toString();
     final String receiver=Provider.of<Prov>(context).uid.toString();

    return Scaffold(
      
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
   
              height: 120,
              width: MediaQuery.of(context).size.width,
              color:const Color.fromARGB(255, 208, 231, 210),
        child: Row(
          
          children: [
            Container(
              margin: EdgeInsets.only(left: 5,top: 10),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),iconSize: 30,),),
            Container(
              margin: EdgeInsets.only(left: 5,top: 10),
              height: 60,
              width: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.white),
              child: Icon(Icons.person,size: 30,),
            )
          ],
        ),
      ),
            Expanded(
              
              child: StreamBuilder<QuerySnapshot>(
                stream: getMessages(sender!,receiver!),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasError) {
                    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                    print(snapshot.error);
                    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                    return Center(
                      child: Text("Something went wrong"),
                    );
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text("No Message Yet"),
                    );
                  }
                  final message = snapshot.data!.docs;


                  return ListView.builder(
                    itemCount: message.length,
                    itemBuilder: (context, index) {
                      final messageData =
                          message[index].data() as Map<String, dynamic>;
                      print(messageData);

                      print("=======================================================");
                      final isMe = messageData["sender"] == sender;
                      return Align(
                        alignment:
                            isMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: isMe
                                  ? const Color.fromARGB(255, 225, 250, 226)
                                  : Colors.grey.shade300),
                          child: Text(messageData["message"],style: TextStyle(fontSize: 16),),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
           
            SizedBox(height:100,),
            Container(
              height: 90,
              width: double.infinity,
              margin: EdgeInsets.all(1.5),
              padding: EdgeInsets.only( right: 10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color:const Color.fromARGB(255, 208, 231, 210),
                  ),
              child: Row(
                children: [
                  Container(child: Icon(Icons.emoji_emotions_outlined,size: 35,),),
                  SizedBox(width: 5,),
                   Container(child: Icon(Icons.add,size: 35,),),
                   SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      // padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                          Expanded(
                            child: TextField(
                              controller: _message,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Messages...",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        // color:  const Color.fromARGB(255, 231, 252, 232),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {
                          add(sender!, receiver!, _message.text);
                        },
                        icon: Center(
                          child: Icon(
                            Icons.send,
                            size: 30,
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}