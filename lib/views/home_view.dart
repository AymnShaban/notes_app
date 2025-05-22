import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import '../widgets/custom_floating_action_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 0xff
      floatingActionButton: const CustomFloatingActionButton(),
      backgroundColor: Colors.indigo[600]!.withValues(alpha: 0.179),
      body: const NotesViewBody(),
    );
  }
}
