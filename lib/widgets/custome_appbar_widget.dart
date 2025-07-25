import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custome_search_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Spacer(),
        customeSearchIcon(),
      ],
    );
  }
}
