import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String addName = " ";
  bool ButtonIsOn = false;
  bool autoFocusName = false;
  bool autoFocusPasswd = false;

  final _formKey = GlobalKey<FormState>();

  moveTohomePage(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        ButtonIsOn = true;
      });
      print("Button is $ButtonIsOn");
      await Future.delayed(Duration(milliseconds: 1500));
      await Navigator.of(context).pushNamed(MyRoutes.homeRoute);
      ButtonIsOn = false;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          reverse: true,
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    //height: 400,
                    //margin: EdgeInsets.all(20),
                    child: Image.asset(
                      "assets/images/undraw_mobile_login_ikmv.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Container(
                    // width: 200,
                    // height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Text(
                      "  Welcome $addName ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //backgroundColor: Colors.yellow,
                        color: Colors.purple,
                      ),
                      textScaleFactor: 1.5,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 32),
                    child: Column(
                      children: [
                        TextFormField(
                          onChanged: (value) {
                            setState(() {
                              addName = value;
                            });
                          },

                          validator: (value) {
                            if (value.isEmpty) return "Enter UserName";

                            return null;
                          },
                          autofocus: autoFocusName,
                          // controller: TextEditingController(),
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
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty || value.length < 4)
                              return "Give password of length upto 8";
 
                            //else
                            return null;
                          },

                          autofocus: autoFocusPasswd,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "e.g. Ri@#12_",
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
                  Material(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(ButtonIsOn ? 50 : 10),
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () {
                        moveTohomePage(context);
                        //await Future.delayed(Duration(seconds: 2));
                        // ButtonIsOn = false;
                        // print("Button is $ButtonIsOn");
                        // setState(() {});
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        alignment: Alignment.center,
                        height: 50,
                        width: ButtonIsOn ? 50 : 150,
                        // decoration: BoxDecoration(
                        //   color: Colors.deepPurple,
                        // borderRadius:
                        //     BorderRadius.circular(ButtonIsOn ? 50 : 10),
                        //shape: ButtonIsOn?BoxShape.circle:BoxShape.rectangle,

                        child: ButtonIsOn
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Text("Login"),
                  //   style: ElevatedButton.styleFrom(),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                  ),
                ],
              ),
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
