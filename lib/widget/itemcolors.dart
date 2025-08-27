import 'package:flutter/material.dart';

class itemcolors extends StatelessWidget {
  const itemcolors({super.key, required this.check, required this.color});
  final bool check;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return check
        ? CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(backgroundColor: color, radius: 30),
          )
        : CircleAvatar(backgroundColor: color, radius: 35);
  }
}
