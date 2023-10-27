import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
      ),
      body: ListView(
        children: [
          Center(
              child: Text("home page ",
                  style: TextStyle(fontSize: 30), textAlign: TextAlign.center)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.of(context).pushNamed("about");
                },
                child: Text(
                  "Go to aboutus",
                  style: TextStyle(color: Colors.black),
                ),
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: MaterialButton(
                color: Colors.red,
                onPressed: () {
                  Navigator.of(context).pushNamed("contact");
                },
                child: Text(
                  "Go to contact us",
                  style: TextStyle(color: Colors.black),
                ),
              ))
        ],
      ),
    );
  }
}
