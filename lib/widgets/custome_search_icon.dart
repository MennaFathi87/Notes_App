import 'package:flutter/material.dart';

class customeSearchIcon extends StatelessWidget {
  const customeSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.3),
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Icon(
          Icons.search,
          size: 20,
        ),
      ),
    );
  }
}
