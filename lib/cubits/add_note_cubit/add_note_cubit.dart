import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesInitial());
  Color color = const Color(0xffFBE880);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    await notesBox.add(note);
    emit(AddNotesSuccess());
  }
}
