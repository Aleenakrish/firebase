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
      appBar: AppBar(title: Center(child: Text("HOMEPAGE")),
      backgroundColor: Colors.white,
      ),
      body: Container(
        
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Expanded(child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            ),
            itemCount: 6,
           itemBuilder: (context, index) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 248, 248, 248),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: const Color.fromARGB(255, 226, 226, 226)
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            color: const Color.fromARGB(255, 216, 215, 215)
                          )
                        ]
                      ),
                      child: IconButton(onPressed: (){},
                       icon: Icon(Icons.person)),
                    )
                  ],
                ),
              ),
            );
          },)),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: const Color.fromARGB(255, 238, 208, 218),
        onPressed: (){
          Navigator.pushNamed(context, "cardpage");
        },child: Icon(Icons.add,color: Colors.black,),),
    );
  }
}