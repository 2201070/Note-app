import 'package:flutter/material.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/widget/eidt.dart';

class editnotes extends StatelessWidget {
  const editnotes({super.key, required this.note});
  final notemodel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: edit(note: note));
  }
}
