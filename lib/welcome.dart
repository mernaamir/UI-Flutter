import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/contactus.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
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
                                  "welcome to you",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontFamily: "myfont"),
                                )),
                            SvgPicture.asset("images/chat.svg"),
                            SizedBox(height: 40),
                            Container(
                              child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  child: MaterialButton(
                                      color: Colors.purple,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 60, vertical: 9),
                                      onPressed: () {
                                        Navigator.pushNamed(context, "login");
                                      },
                                      child: Text(
                                        "login",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ))),
                            ),
                            SizedBox(height: 15),
                            Container(
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    child: MaterialButton(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 54, vertical: 9),
                                      color: Colors.purple[100],
                                      onPressed: () {
                                        Navigator.pushNamed(context, "signup");
                                      },
                                      child: Text(
                                        "signup",
                                        style: TextStyle(
                                            color: Colors.grey[850],
                                            fontSize: 20),
                                      ),
                                    )))
                          ],
                        )),
                    Positioned(
                      child: Image.asset("images/main_top.png"),
                      width: 111,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Image.asset("images/main_bottom.png"),
                      width: 111,
                    ),
                  ],
                ))));
  }
}
