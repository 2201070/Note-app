import 'package:flutter/material.dart';

class Buttonsheet extends StatelessWidget {
  const Buttonsheet({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: isloading
              ? SizedBox(
                  height: 26,
                  width: 26,
                  child: CircularProgressIndicator(),
                )
              : Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
        ),
      ),
    );
  }
}
