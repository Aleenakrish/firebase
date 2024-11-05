import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.window,
                    color: Colors.red,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, top: 10),
                  child: Icon(
                    Icons.notifications_outlined,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 180,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 252, 248, 248),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: const Color.fromARGB(255, 196, 79, 71),
                    // offset: Offset(5, 5)
                  )
                ]),
            child: Row(
              children: [
                Container(
                  height: 150,
                  width: 130,
                  // margin: EdgeInsets.only(left: 5, top: 5),
                  child: Image.asset("./images/donor.jpg"),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Together, We are",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 221, 36, 23),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Kerala's Lifeline",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 221, 36, 23),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 180,
                        margin: EdgeInsets.only(left: 5, top: 5),
                        child: Image.asset("./images/infi.png"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 50),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 50),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: const Color.fromARGB(255, 207, 102, 95),
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.search,
                          size: 38,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Find Donors",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 219, 46, 34),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 204, 34, 22)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // height: ,
                  margin: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "Blood Needed",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "B+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "O+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "AB+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "O-",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "AB-",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Icon(
                            Icons.water_drop_sharp,
                            color: Colors.red,
                            size: 50,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "A+",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Container(
          //     margin: EdgeInsets.only(left: 10),
          //     child: Text(
          //       "Donation Request",
          //       style: TextStyle(fontSize: 16),
          //     ),
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Container(
          //     height: 300,
          //     width: 200,
          //     child: ListView(
          //       children: [
          //         Container(
          //           margin: EdgeInsets.only(left: 10, right: 10),
          //           height: 90,
          //           width: 150,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.white,
          //               boxShadow: [
          //                 BoxShadow(
          //                   blurRadius: 2,
          //                   color: Colors.red,
          //                   // offset: Offset(5, 5)
          //                 )
          //               ]),
          //           child: Row(
          //             children: [
          //               Container(
          //                 margin: EdgeInsets.only(left: 5),
          //                 height: 80,
          //                 width: 80,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(15),
          //                   color: Colors.grey,
          //                 ),
          //                 child: Icon(
          //                   Icons.perm_identity,
          //                   size: 50,
          //                   color: Colors.white,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(left: 10, right: 10),
          //           height: 90,
          //           width: 150,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.white,
          //               boxShadow: [
          //                 BoxShadow(
          //                   blurRadius: 2,
          //                   color: Colors.red,
          //                   // offset: Offset(5, 5)
          //                 )
          //               ]),
          //           child: Row(
          //             children: [
          //               Container(
          //                 margin: EdgeInsets.only(left: 5),
          //                 height: 80,
          //                 width: 80,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(15),
          //                   color: Colors.grey,
          //                 ),
          //                 child: Icon(
          //                   Icons.perm_identity,
          //                   size: 50,
          //                   color: Colors.white,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         SizedBox(
          //           height: 5,
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(left: 10, right: 10),
          //           height: 90,
          //           width: 150,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.white,
          //               boxShadow: [
          //                 BoxShadow(blurRadius: 2, color: Colors.red
          //                     // offset: Offset(5, 5)
          //                     )
          //               ]),
          //           child: Row(
          //             children: [
          //               Container(
          //                 margin: EdgeInsets.only(left: 5),
          //                 height: 80,
          //                 width: 80,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(15),
          //                   color: Colors.grey,
          //                 ),
          //                 child: Icon(
          //                   Icons.perm_identity,
          //                   size: 50,
          //                   color: Colors.white,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //         SizedBox(
          //           height: 7,
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(left: 10, right: 10),
          //           height: 90,
          //           width: 150,
          //           decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(15),
          //               color: Colors.white,
          //               boxShadow: [
          //                 BoxShadow(blurRadius: 2, color: Colors.red
          //                     // offset: Offset(5, 5)
          //                     )
          //               ]),
          //           child: Row(
          //             children: [
          //               Container(
          //                 margin: EdgeInsets.only(left: 5),
          //                 height: 80,
          //                 width: 80,
          //                 decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(15),
          //                   color: Colors.grey,
          //                 ),
          //                 child: Icon(
          //                   Icons.perm_identity,
          //                   size: 50,
          //                   color: Colors.white,
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   )
        ]),
      ),
    );
  }
}
