part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class NotesInitial extends AddNoteState {}

class NotesLoading extends AddNoteState {}

class NotesSuccess extends AddNoteState {}

class NotesFailure extends AddNoteState {
  final String errMessage;

  NotesFailure(this.errMessage);
}
