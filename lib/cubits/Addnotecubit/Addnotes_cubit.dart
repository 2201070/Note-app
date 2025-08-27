import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/modal/notemodel.dart';
part 'Addnotes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  Color? color = Color(0xffffecd1);
  AddNote(notemodel note) async {
    note.color = color!.value;
    emit(NotesLoading());
    try {
      var notebox = Hive.box<notemodel>('notebox');
      await notebox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
