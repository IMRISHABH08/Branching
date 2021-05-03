import 'package:flutter/material.dart';

//import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './home_page.dart';

class LoginPage extends StatelessWidget {
  TextEditingController user_name = TextEditingController();
  TextEditingController password = TextEditingController();

  

  @override
  Widget build(BuildContext context) {

    void validation() {
    if (user_name.text.isEmpty || password.text.isEmpty) {
      return;
    } else {
      Navigator.of(context).pushNamed("/home_page");
    }
  }

    return Material(
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.white,
              //margin: EdgeInsets.all(20),
              child: Image.asset(
                "assets/images/undraw_mobile_login_ikmv.png",
                fit: BoxFit.cover,
                //height: 500,
              ),
            ),
            // SizedBox(
            //   height: 10,
            // ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.blue,
              ),
              child: Text(
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: GoogleFonts.pacifico().fontFamily),
                textScaleFactor: 2.0,
              ),
               onPressed:(){},
              
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: 70, bottom: 20, right: 20, left: 20),
              child: Column(
                children: [
                  TextField(
                    controller: user_name,
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
                    onSubmitted: (_) {
                      validation();
                    },

                    // inputFormatters: [
                    //   FilteringTextInputFormatter.allow(filterPattern)
                    // ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: password,
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
                    onSubmitted: (_) {
                      // validation();
                    },
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            ElevatedButton(
              child: Text("Login"),
              style: ElevatedButton.styleFrom(minimumSize: Size(90, 30)),
              onPressed: validation,
            ),
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
