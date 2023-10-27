import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.white,
                child: Stack(
                  children: [
                    Container(
                        // color: Colors.red,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.all(50),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 35,
                                    fontFamily: "myfont",
                                  ),
                                )),
                            SvgPicture.asset(
                              "images/signup.svg",
                              height: 250,
                            ),
                            SizedBox(height: 27),
                            Center(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      width: 300,
                                      decoration: BoxDecoration(
                                          color: Colors.purple[100]),
                                      child: TextField(
                                        enabled: true,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "your email :",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[800]),

                                          // contentPadding: EdgeInsets.symmetric(
                                          //     horizontal: 30, vertical: 10),
                                          icon: Icon(
                                            Icons.person,
                                            color: Colors.purple[800],
                                          ),
                                        ),
                                      ),
                                    ))),
                            SizedBox(height: 15),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: Colors.purple[100],
                                    width: 300,
                                    child: ClipRRect(
                                        // borderRadius: BorderRadius.all(
                                        //     Radius.circular(100)),
                                        child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        // suffix: Icon(
                                        //   Icons.remove_red_eye,
                                        //   color: Colors.purple[800],
                                        // ),
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[800]),
                                        icon: Icon(
                                          Icons.lock,
                                          color: Colors.purple[800],
                                        ),
                                      ),
                                    )))),
                            SizedBox(height: 20),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                    width: 300,
                                    child: MaterialButton(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 100, vertical: 10),
                                      color: Colors.purple,
                                      onPressed: () {},
                                      child: Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "already have an account ?",
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  "login",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Container(
                                width: 220,
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Divider(
                                      thickness: 1,
                                      color: Colors.purple[900],
                                    )),
                                    Text("OR"),
                                    Expanded(
                                        child: Divider(
                                      thickness: 1,
                                      color: Colors.purple[900],
                                    ))
                                  ],
                                )),
                            Row(
                              children: [],
                            )
                          ],
                        )),
                    Positioned(
                      child: Image.asset("images/signup_top.png"),
                      width: 111,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.asset("images/login_bottom.png"),
                      width: 111,
                    ),
                  ],
                ))));
  }
}
