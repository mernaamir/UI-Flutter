import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class customList extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imageName;

  const customList(
      {super.key,
      required this.name,
      required this.email,
      required this.date,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(children: [
      Container(
          height: 100,
          width: 100,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(70),
              child: Image.asset("images/$imageName", fit: BoxFit.fill))),
      Expanded(
        child: ListTile(
            title: Text("$name"),
            subtitle: Text("$email"),
            trailing: Text("$date")),
      )
    ]));
  }
}
