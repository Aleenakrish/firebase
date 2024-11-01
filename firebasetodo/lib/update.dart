import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    List data = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Text(data[0].toString()),
      ),
    );
  }
}
