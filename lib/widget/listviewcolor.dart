import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/Addnotecubit/Addnotes_cubit.dart';
import 'package:notes/widget/itemcolors.dart';

class listviewcolor extends StatefulWidget {
  const listviewcolor({super.key});

  @override
  State<listviewcolor> createState() => _listviewcolorState();
}

class _listviewcolorState extends State<listviewcolor> {
  int curindex = 0;
  List<Color> colors = [
    Color(0xffe29578),
    Color(0xffffecd1),
    Color(0xff4b2e2e),
    Color(0xff83c5be),
    Color(0xff006d77),
    Color(0xfff5cb5c),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: GestureDetector(
              onTap: () {
                curindex = index;
                BlocProvider.of<NotesCubit>(context).color = colors[index];
                setState(() {});
              },
              child: itemcolors(check: curindex == index, color: colors[index]),
            ),
          );
        },
      ),
    );
  }
}
