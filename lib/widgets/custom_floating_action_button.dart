
import 'package:flutter/material.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      splashColor: Colors.cyan,
      backgroundColor: Color(0xff55EBD4),
      foregroundColor: Colors.black,
      child: const Icon(Icons.add),
    );
  }
}
