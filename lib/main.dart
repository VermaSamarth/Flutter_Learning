import 'package:flutter/material.dart';
import 'package:sample_flutter_app_01/pages/home_page.dart';
import 'package:sample_flutter_app_01/pages/main_page.dart';
import 'package:sample_flutter_app_01/pages/test_page.dart';
import 'package:sample_flutter_app_01/styles/app_colors.dart';
import 'package:sample_flutter_app_01/pages/login_page.dart';

// Everything in Flutter is a Widget.

// Section -> 01
// ------------------------- Basic Printing the single Text on the screen -----------------------------

// void main() {
//   runApp(MaterialApp(
//     home: Material(
//       child: Text("Hello World. Welcome to App Developemnt."),
//     ),
//   ));
// }

// Section -> 02
// ------------- Using the COLUMN property to print the multiple texts on the home page. --------------

// void main(){
//   runApp(MaterialApp(
//     home: Material(
//       child: Column(
//         children:[Text("Hello World!!!"),
//         Text("Welcome to the world of App Development."),
//         MyApp(),
//         ]
//       ),
//     ),
//   ));
// }

// Section -> 03
// StatelessWidget -> It is widget in the App that remains static through the execution life cycle of the application. It dosen't change its state with time.
// The below class MyApp conatins the function build thata returns the Widget.

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Text("Everything in Flutter is a Widget.");
//     throw UnimplementedError();
//   }

// Section -> 04
// -------------------- HOT-RELOAD & StatelessWidget ----------------------
// void main(){
//   runApp(MyApp());
// }

// Hot-reload -> In hot-reload, we don't have to restarte the application whenever we execute it. Hot Reload doesn't execute the main function. It can execute the classes that are called from the main function,

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//       return MaterialApp(
//         home: Material(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Hello World!!!"),
//               Text("We are Hot-Reloading the application."),
//               Text("Stateless Widgets."),
//               Text("Welcome to App Development.")
//             ],
//           )
//         ),
//       );
//   }
// }

// Section -> 05
// ---------------------------- SCAFFOLD WIDGETS --------------------------
// Scaffold contains the material components as well as some enhanced features of its own which makes the development easier.
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(backgroundColor: Colors.amber[800],),
//         backgroundColor: Colors.amber[400],
//         drawer: Container(
//           width: 200,
//           height: 600,
//           color: Colors.amber[50],
//         ),
//         body: Column(
//           children: [
//             Text("Hello, Welcome back !!!"),
//             Text("Login to continue.")
//           ],
//         ),
//       ),
//     );

//     throw UnimplementedError();
//   }
// }

// Section -> 6
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "Urbanist",
          scaffoldBackgroundColor: AppColors.backgroundColor,
          // brightness: Brightness.light,
          ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/test': (context) =>TestPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );

    throw UnimplementedError();
  }
}




// Section -> 7
// Check Rendering problem


// void main(){
//   runApp(MaterialApp(
//     home: Material(
//       child: Text("Hello World"),
//     ),
//   ));
// }