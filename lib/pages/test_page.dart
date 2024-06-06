import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState(); 
}

class _TestPageState extends State<TestPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green[200],),
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          "The count is $counter",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[200],
      ),
    );
  }
}
