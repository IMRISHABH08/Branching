import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        //reverse: true,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              //margin: EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/undraw_mobile_login_ikmv.png",
                fit: BoxFit.cover,
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                "Welcome",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 1.5,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed("/home_page");
              },
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      //  border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(25),
                      //   borderSide: BorderSide.none,
                      // ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25)),
                      labelText: "Username",
                      // floatingLabelBehavior:,
                      hintText: "e.g. Rishabh",
                      hintStyle: TextStyle(fontSize: 10),
                      filled: true,
                      fillColor: Colors.blue[200],
                    ),
                    keyboardType: TextInputType.name,
                    //onSubmitted: (_){},

                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(filterPattern)
                    // ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "e.g. Ri@#_",
                      hintStyle: TextStyle(fontSize: 10),
                      filled: true,
                      fillColor: Colors.blue[200],
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(25)),

                      //errorText: "For validation",
                    ),
                    keyboardType: TextInputType.name,
                    obscureText: true,
                    // onSubmitted: ,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(),
            ),
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom)),
          ],
        ),
      ),
    );
  }
}

// Sliding effect 1st insta
// import 'package:flutter/material.dart';
// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Stack(
//         children: [
//           Container(
//             color: Colors.white,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 150,
//                 ),
//                 Image.asset(
//                   "assets/images/undraw_mobile_login_ikmv.png",
//                   fit: BoxFit.cover,
//                 ),
//               ],
//             ),
//           ),
//           ListView(
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   SizedBox(
//                     width: 60,
//                   ),
//                   Opacity(
//                     opacity: 0.0,
//                     child: Container(
//                       height: 600,
//                       width: 200,
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 height: 800,
//                 width: 200,
//                 color: Colors.white,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
