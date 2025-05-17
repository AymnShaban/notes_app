import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(title: 'Edit note', icon: Icons.check),
          SizedBox(height: 30),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16),
          CustomTextField(hint: 'Content', maxLines: 6),
          SizedBox(height: 16),
          CustomButton(text: 'UpDate',),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
