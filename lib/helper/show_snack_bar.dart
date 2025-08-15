import 'package:flutter/material.dart';
import 'package:notesapp/constant/constant.dart';

void ShowSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Note deleted successfully!',
        style: TextStyle(
          color: kTextColor,
        ),
      ),
      duration: Duration(seconds: 2),
      backgroundColor: kShowSnacbarColor,
    ),
  );
}
