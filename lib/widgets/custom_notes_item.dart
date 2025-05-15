import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_text.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 25,
        left: 15
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xffFFCD7A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: CustomText(
              text: 'Flutter tips',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 12),
              child: CustomText(
                text:
                    'Learn flutter is the right way ',
                fontSize: 25,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: CustomText(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16
              ,text: 'May20,2022 ',
            ),
          )
        ],
      ),
    );
  }
}
