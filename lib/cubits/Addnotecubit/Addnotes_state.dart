part of 'Addnotes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesFailure extends NotesState {
  final String errormessage;
  NotesFailure(this.errormessage);
}
