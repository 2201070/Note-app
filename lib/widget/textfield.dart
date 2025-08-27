import 'package:flutter/material.dart';

class textfieldd extends StatelessWidget {
  const textfieldd({
    super.key,
    required this.hint,
    this.mxlines = 1,
    this.onsaved,
    this.onchange,
  });
  final String hint;
  final int mxlines;
  final void Function(String?)? onsaved;
  final void Function(String?)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      maxLines: mxlines,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}
