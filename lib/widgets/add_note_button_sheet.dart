import 'package:flutter/material.dart';
import 'add_note_form_state.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}
