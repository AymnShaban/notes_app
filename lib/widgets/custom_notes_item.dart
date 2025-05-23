import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return  EditNoteView(note: note,);
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 25, left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: CustomText(
                text: note.title,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 10, top: 12),
                child: CustomText(
                  text: note.subTitle,
                  fontSize: 20,
                  color: Colors.white60,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(FontAwesomeIcons.trash),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                color: Colors.white60,
                fontSize: 16,
                text: note.date,
              ),
            )
          ],
        ),
      ),
    );
  }
}
