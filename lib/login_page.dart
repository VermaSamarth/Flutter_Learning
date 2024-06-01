import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,    // To avoid the screen from resizing
      // Can use SingleChildScrollView with MediaQuery -> Calculate the height of the screen dynamically then do the thing.
      body: Padding(
        padding: EdgeInsets.all(20),  // Add padding to all the edges
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Spacer(),
            // ------------ Main Heading --------------
            Text(
              "Hello, Welcome to Autohub",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                // fontFamily: "Urbanist",
              ),
            ),

            // ---------------- Size Box ----------------
            SizedBox(
              height: 15,
            ),

            // ---------------- Second Heading ---------------
            Text(
              "Login to continue.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 22,
            ),

            // ------------------------- Text Fields -------------------------
            // --------- Username Textfield ----------
            TextField(
              decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.9)),
            ),

            SizedBox(
              height: 15,
            ),

            // --------- Password Textfield ----------
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                filled: true,
                fillColor: Colors.white.withOpacity(0.9),
              ),
            ),

            // ------------------- Forgot Password : TEXT BUTTON --------------------
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  print("Forgot password is clicked.");
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Spacer(),
            // ------------------ LOGIN Button ----------------
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    print("Log in button is clicked.");
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5)), // Chnage the border radius of the button
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white),
                  child: Text(
                    "Log in",
                  )),
            ),

            SizedBox(
              height: 40,
            ),
            Spacer(),
            Text(
              "or Log in with",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 10,
            ),

            // Before adding the image from the assets folder, Remember to add the user created folder in thr pubspec.yaml.
            // ------------------------ Google Login Button  ----------------------
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login with Google",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
            ),

            // ------------------------------ Facebook Login Button -----------------------
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/facebook.png',
                        width: 25, height: 25),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Login with Facebook",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),

            // --------------------- No Account : SIGN UP ----------------------
            Row(
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ))
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
