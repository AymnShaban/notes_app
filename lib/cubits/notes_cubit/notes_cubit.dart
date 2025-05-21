import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/models/note_model.dart';

import '../../constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    emit(NotesLoadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccessState(notes));
    } on Exception catch (e) {
      emit(NotesFailureState(e.toString()));
    }
  }
}
