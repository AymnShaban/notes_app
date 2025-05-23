import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});

  final bool isSelect;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return isSelect
        ?  CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 20,
            ),
          )
        :  CircleAvatar(
            backgroundColor:color ,
            radius: 24,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

int currentIndex = 0;
List<Color> colors = const[
  Color(0xff2f325a),
  Color(0xff5a3b44),
  Color(0xff302716),
  Color(0xff0d6363),
  Color(0xff253f67),
  Color(0xff003f5c),
  Color(0xff00202e),
];

class _ColorsListViewState extends State<ColorsListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24 * 2 + 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {});
              },
              child: ColorItem(
                isSelect: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
