import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/read_note/readnote_cubit.dart';
import 'package:notes/modal/notemodel.dart';
import 'package:notes/view/editnotes.dart';

class items extends StatelessWidget {
  const items({super.key, required this.note});
  final notemodel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return editnotes(note: note);
              },
            ),
          );
        },
        child: Container(
          width: 370,
          height: 256,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Color(note.color),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(height: 25),
                  Text(
                    note.title,
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Pacifico',
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 300),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            note.delete();
                            BlocProvider.of<ReadnoteCubit>(context).Allnote();
                          },
                          child: Icon(
                            FontAwesomeIcons.trash,
                            size: 32,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    note.content,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 228),
                    child: Row(
                      children: [
                        Text(
                          note.date,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
