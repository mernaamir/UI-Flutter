import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';

class contactus extends StatelessWidget {
  const contactus({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("contact us")),
      body: ListView(
        children: [
          Center(
            child: Text("contact us page",
                style: TextStyle(fontSize: 30), textAlign: TextAlign.center),
          ),
          Center(
              child: MaterialButton(
            color: Colors.red,
            onPressed: () {},
            child: Text("show dialog", style: TextStyle(color: Colors.white)),
          )),
        ],
      ),
    );
  }
}
