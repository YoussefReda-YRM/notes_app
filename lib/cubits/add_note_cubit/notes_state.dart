part of 'notes_cubit.dart';

@immutable
abstract class AddNotesState {}

class AddNoteInitial extends AddNotesState{}

class AddNoteLoading extends AddNotesState{}

class AddNoteSuccess extends AddNotesState{}

class AddNoteFailure extends AddNotesState
{
  final String errorMessage;

  AddNoteFailure(this.errorMessage);
}