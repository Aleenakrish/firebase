import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _message = TextEditingController();

  final mybox = Hive.box('mybox');
  String? sender;
  String? reciever;
  String? Receiver_name;
  
  void get_id() {
    sender = mybox.get(1);
    reciever = mybox.get(2);
    Receiver_name = mybox.get(3);
  }

  Future<void> add(String sender, String receiver, String message) async {
    await FirebaseFirestore.instance.collection("messages").add({
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
  void initState() {
    // TODO: implement initState
    super.initState();
    get_id();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
                height: 100,
                width: double.infinity,
                color:const Color.fromARGB(255, 208, 231, 210),
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        // Navigator.popUntil(context, (route) {
                        //   return route.settings.name=="home";
                        // },);
                        // Navigator.pop(context);
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          "homepage",
                          (route) {
                            return false;
                          },
                        );
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                     Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                          child: Icon(Icons.person,size: 30,color:Colors.grey,),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Text(reciever.toString())),
                   
                  ],
                )),
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
              stream: getMessages(sender!, reciever!),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasError) {
                  print(
                      "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                  print(snapshot.error);
                  print(
                      "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
                  return Center(
                    child: Text("Something went wrong"),
                  );
                }
                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(
                    child: Text("No messages Yet"),
                  );
                }
                final message = snapshot.data!.docs;
                return ListView.builder(
                  itemCount: message.length,
                  itemBuilder: (context, index) {
                    final messageData =
                        message[index].data() as Map<String, dynamic>;
                    print(messageData);
                    print(
                        "=================================================================================");
                    print(messageData["message"]);
                    print(
                        "==================================================================================");
                    final isMe = messageData["sender"] == sender;
                    return Align(
                      alignment:
                          isMe ? Alignment.centerRight : Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 10, right: 7, top: 5, bottom: 5),
                        padding: EdgeInsets.only(
                            left: 10, right: 10, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isMe
                                ? const Color.fromARGB(255, 239, 253, 240)
                                : const Color.fromARGB(255, 223, 224, 223),boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.grey,
                                  )
                                ]),
                        child: Text(
                          messageData["message"],
                          style: TextStyle(
                              color: isMe ? Colors.black : Colors.black,fontSize: 16),
                        ),
                      ),
                    );
                  },
                );
              },
            )),
            Container(
              height: 1,
              width: double.infinity,
              child: Divider(),
            ),
            Container(
              height: 90,
              width: double.infinity,
              // margin: EdgeInsets.all(1),
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color:const Color.fromARGB(255, 208, 231, 210)
                  ),
              child: Row(
                children: [
                  Container(child:IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined,size: 33,)),),
                  Container(child:Icon(Icons.add,size: 33,) ,),
                  SizedBox(width: 5,),
                  Expanded(
                    
                    child: Container(
                      height: 60,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.mic)),
                          Expanded(
                            child: TextField(
                              controller: _message,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Message...",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        // color: Colors.brown.shade50,
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {
                          add(sender!, reciever!, _message.text);
                        //   List ls = [];
                        //   if (mybox.get(4) != null) {
                        //     ls = mybox.get(4);
                        //     ls.add(Receiver_name.toString());
                        //     mybox.put(4, ls);
                        //   } else {
                        //     ls.add(Receiver_name.toString());
                        //     mybox.put(4, ls);
                        //   }
                        },
                        icon: Icon(
                          Icons.send,
                          size: 30,
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
