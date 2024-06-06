import 'package:flutter/material.dart';
import 'package:sample_flutter_app_01/components/post_item.dart';
import 'package:sample_flutter_app_01/components/toolbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Toolbar(
        title: "AutoHub",
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.location_on))],
      ),
      // AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Text("AutoHub"),
      //   centerTitle: false,
      //   actions: [
      //     Icon(Icons.location_on_outlined),
      //   ],
      // ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: _GenerateMockUers(),
      //   ),
      // ),
      body: ListView(
        children: _GenerateMockUers(),
      ),
    );
  }
}

List<Widget> _GenerateMockUers() {
  List<Widget> users = [];
  for (var i = 0; i < 100; i++) {
    users.add(PostItem());
  }
  return users;
}
