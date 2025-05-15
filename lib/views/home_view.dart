import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600]!.withOpacity(0.179),
      body: NotesViewBody(),
    );
  }
}
