import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/add_notes_cubit/add_notes_cubit.dart';
import '../cubits/notes_cubit/notes_cubit.dart';
import 'add_note_form_state.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
          listener: (context, state) {
            if (state is AddNotesFailure) {
              print('failed ${state.errorMessage}');
            }
            if (state is AddNotesSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
                absorbing: state is AddNotesLoading ? true : false,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 1,
                    right: 1,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const SingleChildScrollView(child: AddNoteFormState()),
                ));
          },
        ),
      ),
    );
  }
}
