import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hint: 'Title'),
            SizedBox(height: 16),
            CustomTextField(hint: 'Content', maxLines: 6),
            SizedBox(height: 16),
            CustomButton(text: 'Add',),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
