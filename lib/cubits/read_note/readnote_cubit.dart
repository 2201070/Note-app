import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/modal/notemodel.dart';

part 'readnote_state.dart';

class ReadnoteCubit extends Cubit<ReadnoteState> {
  ReadnoteCubit() : super(ReadnoteInitial());
  List<notemodel>? allnote;
  Allnote() {
    var notebox = Hive.box<notemodel>('notebox');
    allnote = notebox.values.toList();
    emit(Readnotesuccess());
  }
}
