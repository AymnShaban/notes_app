import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hint: 'Title',
          ),
        ],
      ),
    );
  }
}
