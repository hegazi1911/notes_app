import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Model/note_Model.dart';
import 'package:notes_app/constans.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel noteModel) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(KNotesbox);
      await notesBox.add(noteModel);
      emit(AddNoteSucces());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
