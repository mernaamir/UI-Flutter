import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                                  "login",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontFamily: "myfont"),
                                )),
                            SvgPicture.asset("images/login.svg"),
                            SizedBox(height: 40),
                            Center(
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 5),
                                      width: 300,
                                      decoration: BoxDecoration(
                                          color: Colors.purple[100]),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "your email :",
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
                                        horizontal: 30, vertical: 5),
                                    color: Colors.purple[100],
                                    width: 300,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Pass Word",
                                        icon: Icon(
                                          Icons.lock,
                                          color: Colors.purple[800],
                                        ),
                                      ),
                                    ))),
                            SizedBox(height: 20),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                    width: 300,
                                    child: MaterialButton(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 80, vertical: 10),
                                      color: Colors.purple,
                                      onPressed: () {},
                                      child: Text(
                                        "login",
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
                                Text("do not have an account ?"),
                                Text(
                                  "Sign up",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                      child: Image.asset("images/main_top.png"),
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
