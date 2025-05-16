
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_button_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(context: context, builder: (context){
          return const AddNoteButtonSheet(

          );
        });
      },
      splashColor: Colors.cyan,
      backgroundColor: Color(0xff55EBD4),
      foregroundColor: Colors.black,
      child: const Icon(Icons.add),
    );
  }
}
