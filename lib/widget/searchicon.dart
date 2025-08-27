import 'package:flutter/material.dart';

class searchicon extends StatelessWidget {
  const searchicon({super.key, required this.icon, this.ontap});
  final IconData icon;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.blueGrey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: GestureDetector(onTap: ontap, child: Icon(icon, size: 28)),
        ),
      ),
    );
  }
}
