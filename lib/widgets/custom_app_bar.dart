import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  final String title;
  final IconData icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(height: 100),
      Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
      const Spacer(),
      CustomSearchIcon(
        icon: icon,
        onTap: onTap,
      )
    ]);
  }
}
