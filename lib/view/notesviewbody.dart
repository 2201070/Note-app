import 'package:flutter/material.dart';
import 'package:notes/view/Notesview.dart';
import 'package:notes/widget/notessheet.dart';

class notesbody extends StatelessWidget {
  const notesbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return notessheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: Notesview(),
    );
  }
}
