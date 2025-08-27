import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/Addnotecubit/Addnotes_cubit.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/widget/buttonsheet.dart';
import 'package:notes/widget/listviewcolor.dart';
import 'package:notes/widget/textfield.dart';

class AddNote extends StatefulWidget {
  const AddNote({super.key});

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 35),
          textfieldd(
            hint: 'Enter Title',
            onsaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          textfieldd(
            hint: 'Enter Content',
            mxlines: 6,
            onsaved: (value) {
              content = value;
            },
          ),
          SizedBox(height: 20),
          listviewcolor(),
          SizedBox(height: 30),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              return Buttonsheet(
                isloading: state is NotesLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var notemodell = notemodel(
                      title: title!,
                      content: content!,
                      // date: DateTime.now().toString().split(' ')[0],
                      date: DateFormat.yMd().format(DateTime.now()),
                      color: Colors.lightBlueAccent.value,
                    );
                    BlocProvider.of<NotesCubit>(context).AddNote(notemodell);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
