import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';
class AddNotesCubit extends Cubit<AddNotesState>
{
  AddNotesCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async
  {
    emit(AddNoteLoading());

    try
    {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    }
    catch(e)
    {
      emit(AddNoteFailure(e.toString()));
    }
  }
}