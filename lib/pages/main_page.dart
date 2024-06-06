import 'package:flutter/material.dart';
import 'package:sample_flutter_app_01/pages/home_page.dart';
import 'package:sample_flutter_app_01/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber[900],
      //   title: Text("Bottom Navigation Bar"),
      //   centerTitle: true,
      // ),
      // body: HomePage(),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favourite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded), label: "Add_Post"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "Person")
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber[600],
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text("All the liked posts."),
    ),
    Center(
      child: Text("Add a new post."),
    ),
    Center(
      child: Text("New Messages."),
    ),
    ProfilePage(),
  ];
}
