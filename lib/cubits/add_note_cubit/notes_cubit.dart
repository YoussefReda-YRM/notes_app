import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'notes_state.dart';
class AddNotesCubit extends Cubit<AddNotesState>
{
  AddNotesCubit() : super(AddNoteInitial());
}