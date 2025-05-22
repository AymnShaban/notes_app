import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
    required this.icon,
    this.onTap,
  });

  final IconData icon;
 final  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white24.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16)),
          child: Center(child: Icon(icon)),
        ));
  }
}
