import 'package:flutter/material.dart';
import 'package:sample_flutter_app_01/components/toolbar.dart';
import 'package:sample_flutter_app_01/styles/app_text.dart';

enum ProfileMenu{
    setting,
    edit,
    logout,
  }
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Toolbar(title: "Profile", actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings))],),
      appBar: Toolbar(
        title: "Profile",
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value){
              switch(value){
                case ProfileMenu.setting:
                  print("Settings");
                break;
                case ProfileMenu.edit:
                  print("Edit Menu");
                break;
                case ProfileMenu.logout:
                  print("Logout");
                break;
                default: 
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Settings"),
                  value: ProfileMenu.setting,
                ),
                PopupMenuItem(
                  child: Text("Edit Profile"),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text("Logout"),
                  value: ProfileMenu.logout,
                ),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // ClipRRect     
            Image.asset(
              "assets/temp/user2.png",
              width: 150,
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Emily Blunt",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "England",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "569",
                      style: AppText.text1,
                    ),
                    Text(
                      "Followers",
                      style: AppText.text2,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "98",
                      style: AppText.text1,
                    ),
                    Text(
                      "Posts",
                      style: AppText.text3,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "600",
                      style: AppText.text1,
                    ),
                    Text(
                      "Following",
                      style: AppText.text2,
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 10,),
            Divider(
              thickness: 2,
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
