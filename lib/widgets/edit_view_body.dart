import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import '../models/note_model.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit note',
            icon: Icons.check,
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          const SizedBox(height: 30),
          CustomTextField(
            hint: widget.note.title,
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 16),
          CustomTextField(
            hint: widget.note.subTitle,
            maxLines: 6,
            onChange: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
