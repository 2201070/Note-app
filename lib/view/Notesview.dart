import 'package:flutter/material.dart';
import 'package:notes/widget/appbar.dart';
import 'package:notes/widget/noteslistview.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            appbar(appbbar: ' Notes', fontSiz: 35, icon: Icons.search),
            Expanded(child: noteslistview()),
          ],
        ),
      ),
    );
  }
}
