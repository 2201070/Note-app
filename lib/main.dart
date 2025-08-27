import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/cubits/read_note/readnote_cubit.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/simpleblic/simplebloc.dart';
import 'package:notes/view/notesviewbody.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = simpleblic();
  await Hive.initFlutter();
  Hive.registerAdapter(notemodelAdapter());
  await Hive.openBox<notemodel>('notebox');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReadnoteCubit()..Allnote(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: notesbody(),
      ),
    );
  }
}
