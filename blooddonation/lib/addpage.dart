import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController place = TextEditingController();
  // TextEditingController  = TextEditingController();
 
  String? group;
  String? _isSelected;
  bool _isChecked = false;
  Map mp={};
  final List<String> groups = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text(
            "Donor Registration",
            style: TextStyle(
                color: Colors.red[900], fontSize: 30, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          // backgroundColor: Colors.red[900]
          ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                // controller: name,
                decoration: InputDecoration(
                    labelText: "Full Name",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color:Colors.grey)
                  ]),
              child: TextField(
                // controller: age,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Age",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color:Colors.grey)
                  ]),
              child: TextField(
                // controller: phone,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("BLOOD GROUP"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 50,
                padding: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(5, 5),
                          color:Colors.grey)
                    ]),
                child: Row(
                  children: [
                    Text(
                      group == null ? "Blood Group" : " $group",
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Spacer(),
                    DropdownButton(
                        dropdownColor: Colors.white,
                        padding: EdgeInsets.only(right: 16),
                        underline: Container(
                          height: 0,
                        ),
                        items: groups.map((String Group) {
                          return DropdownMenuItem(
                            value: Group,
                            child: Text(
                              Group,
                              style: TextStyle(color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            group = value;
                          });
                        }),
                  ],
                )),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                // controller: place,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Location",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // Text("DOB"),
            // SizedBox(
            //   height: 10,
            // ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        offset: Offset(5, 5),
                        color: Colors.grey)
                  ]),
              child: TextField(
                keyboardType: TextInputType.datetime,
                // controller: dob,
                decoration: InputDecoration(
                    labelText: "DOB ",
                    labelStyle: TextStyle(color: Colors.grey),
                    border: InputBorder.none),
              ),
            ),
          
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     Checkbox(
                  //         activeColor: Colors.red,
                  //         checkColor: Colors.white,
                  //         value: _isChecked,
                  //         onChanged: (bool? value) {
                  //           setState(() {
                  //             _isChecked = value!;
                  //           });
                  //         }),
                  //     Text(
                  //       "I agree to Donate blood",
                  //       style: TextStyle(fontSize: 15, color: Colors.red[900]),
                  //     )
                  //   ],
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container(
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       "CANCEL",
                //       style: TextStyle(color: Colors.red[900]),
                //     ),
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.white,
                //     ),
                //   ),
                // ),
                // Spacer(),
                Container(
                  margin: EdgeInsets.only(left: 70),
                  height:50 ,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey
                        )
                      ]
                  ),
                
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        // birthDate();
                      });
                      // Navigator.pushNamed(context, "/secondPage");
                    },
                    child:
                        Text("SUBMIT", style: TextStyle(color: Colors.red[900])),
                    style: TextButton.styleFrom(
                        // backgroundColor: Colors.white,
                      
                        shadowColor: Colors.grey[600]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}