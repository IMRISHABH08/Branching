import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    final img =
        "https://cdn.dribbble.com/users/458522/screenshots/4611234/deadpool.jpg?compress=1&resize=800x600";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            DrawerHeader(
              //margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Rishabh Gupta"),
                accountEmail: Text("rishabhgupta007@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    img,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              onTap: () {
                print("hello mail");
                //Navigator.of(context).pop();
              },
              title: Text(
                "Email",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
