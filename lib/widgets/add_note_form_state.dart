import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';
import '../cubits/add_notes_cubit/add_notes_cubit.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

// AutoValidateMode is very important to runtime validation check
class _AddNoteFormStateState extends State<AddNoteFormState> {
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomTextField(
              hint: 'Title',
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 16),
          CustomTextField(
              hint: 'Content',
              maxLines: 6,
              onSaved: (value) {
                subTitle = value;
              }),
          const SizedBox(height: 16),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNotesLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var formattedCurrentDate =
                          DateFormat('dd-MM-yyyy').format(currentDate);
                      var noteModel = NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: formattedCurrentDate,
                        color: Colors.indigo.toARGB32(),
                      );
                      BlocProvider.of<AddNotesCubit>(context)
                          .addNote(noteModel);
                    } else {
                      autoValidateMode = AutovalidateMode.always;
                      // added setState after AutoValidateMode for runtime validation checker
                      setState(() {});
                    }
                  },
                  text: 'Add');
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
