import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Addnotecubit/Addnotes_cubit.dart';
import 'package:notes/cubits/read_note/readnote_cubit.dart';
import 'package:notes/widget/Addnoteform.dart';

class notessheet extends StatelessWidget {
  const notessheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: BlocConsumer<NotesCubit, NotesState>(
        listener: (context, state) {
          if (state is NotesFailure) {
            print('falier ${state.errormessage}');
          }
          if (state is NotesSuccess) {
            BlocProvider.of<ReadnoteCubit>(context).Allnote();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: SingleChildScrollView(child: AddNote()),
            ),
          );
        },
      ),
    );
  }
}
