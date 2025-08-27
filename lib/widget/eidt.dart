import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/read_note/readnote_cubit.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/widget/appbar.dart';
import 'package:notes/widget/textfield.dart';

class edit extends StatefulWidget {
  const edit({super.key, required this.note});
  final notemodel note;

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {
  String? title, content;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        appbar(
          ontap: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.save();
            BlocProvider.of<ReadnoteCubit>(context).Allnote();
            Navigator.pop(context);
          },
          appbbar: '  Eidt Note',
          fontSiz: 25,
          icon: Icons.check,
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: textfieldd(
            onchange: (value) {
              title = value;
            },
            hint: widget.note.title,
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: textfieldd(
            onchange: (value) {
              content = value;
            },
            hint: widget.note.content,
            mxlines: 6,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
