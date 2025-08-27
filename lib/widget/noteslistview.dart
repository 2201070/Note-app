import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/read_note/readnote_cubit.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/widget/items.dart';

class noteslistview extends StatelessWidget {
  const noteslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadnoteCubit, ReadnoteState>(
      builder: (context, state) {
        List<notemodel> notes =
            BlocProvider.of<ReadnoteCubit>(context).allnote ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return items(note: notes[index]);
            },
          ),
        );
      },
    );
  }
}
