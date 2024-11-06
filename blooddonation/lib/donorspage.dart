import 'package:flutter/material.dart';

class Donorspage extends StatefulWidget {
  const Donorspage({super.key});

  @override
  State<Donorspage> createState() => _DonorspageState();
}

class _DonorspageState extends State<Donorspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "View All",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 260,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 211, 139, 133))
                  ]),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        height: 70,
                        width: 70,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                        // child: ,
                      ),
                      Container(
                          child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10, top: 15),
                            child: Text(
                              "Anna Cruz",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 3, top: 5),
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 20,
                                      color: Colors.grey,
                                    )),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: Text(
                                    "gyfgeru",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 15),
                        height: 40,
                        width: 90,
                        // color: Colors.amber,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                              ),
                            )),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, top: 15),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 196, 194, 194),
                          ),
                          child: Center(
                              child: Text(
                            "O+",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ))),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Divider(),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 15, top: 5),
                        height: 50,
                        width: 50,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromARGB(255, 185, 71, 63))),
                        // child: ,
                      ),
                      Container(
                        height: 3,
                        width: 100,
                        color: const Color.fromARGB(255, 219, 86, 76),
                      ),
                      Container(
                        //  margin: EdgeInsets.only(left: 10,top: 5),
                        height: 50,
                        width: 50,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color.fromARGB(255, 185, 71, 63))),
                        // child: ,
                      ),
                      Container(
                        height: 3,
                        width: 80,
                        color: const Color.fromARGB(255, 219, 86, 76),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10, top: 5),
                          height: 50,
                          width: 50,
                          // color: Colors.amber,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 185, 71, 63))),
                          child: ClipRRect(
                              // child: Image.asset(
                              //   "./images/h.jpg",
                              //   fit: BoxFit.cover,
                              // ),
                              ))
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text("Donor Found"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 10),
                        child: Text("Donor Found"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50, top: 10),
                        child: Text("Completed"),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 30, top: 20),
                        height: 45,
                        width: 120,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 185, 71, 63))),
                        child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "View Profile",
                                  style: TextStyle(color: Colors.black),
                                ))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 70, top: 20),
                        height: 45,
                        width: 120,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: const Color.fromARGB(255, 185, 71, 63))),
                        child: Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Message",
                                  style: TextStyle(color: Colors.black),
                                ))),
                      )
                    ],
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
