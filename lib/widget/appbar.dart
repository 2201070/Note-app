import 'package:flutter/material.dart';
import 'package:notes/widget/searchicon.dart';

class appbar extends StatelessWidget {
  appbar({
    super.key,
    required this.appbbar,
    required this.fontSiz,
    required this.icon,
    this.ontap,
  });
  final String appbbar;
  final double fontSiz;
  final IconData icon;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 8),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SizedBox(height: 75),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: Text(
              appbbar,
              style: TextStyle(
                fontSize: fontSiz,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                //fontFamily: 'Pacifico',
              ),
            ),
          ),
          searchicon(ontap: ontap, icon: icon),
        ],
      ),
    );
  }
}
