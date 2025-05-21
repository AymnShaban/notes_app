import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import '../widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        // 0xff
        floatingActionButton: const CustomFloatingActionButton(),
        backgroundColor: Colors.indigo[600]!.withValues(alpha: 0.179),
        body: const NotesViewBody(),
      ),
    );
  }
}
