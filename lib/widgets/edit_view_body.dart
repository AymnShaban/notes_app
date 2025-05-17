import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CustomText(
          text: 'hello',
        ),
      ),
    );
  }
}
