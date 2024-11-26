import 'package:appwrite/models.dart';
import 'package:appwrtetodo/services/appwriteservice.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List ls = ["Ak"];
  TextEditingController _controller = TextEditingController();
  late Appwriteservice _appwriteService;
  List? _task;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("HOMEPAGE")),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Expanded(
            child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 3 / 3.9),
          itemCount: ls.length,
          itemBuilder: (context, index) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          color: const Color.fromARGB(255, 226, 226, 226)),
                    ]),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: const Color.fromARGB(255, 216, 215, 215))
                          ]),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            size: 40,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          ls[index].toString(),
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      child: Divider(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green),
                      child: Center(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "ACTIVATE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ),
                  ],
                ),
              ),
            );
          },
        )),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 241, 240, 241),
        onPressed: () {
          Navigator.pushNamed(context, "cardpage");
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
