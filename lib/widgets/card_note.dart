import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardNote extends StatelessWidget {
  const CardNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24, top: 24),
      decoration: BoxDecoration(
          color: Colors.orangeAccent, borderRadius: BorderRadius.circular(14)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter tips",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Text(
              "build you carerr with Tharwat Smay",
              style:
                  TextStyle(fontSize: 15, color: Colors.black.withOpacity(.5)),
            ),
            trailing: IconButton(
              onPressed: () {},
              //fontAwesom
              icon: Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Text(
              "july 2024/2025",
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
          ),
        ],
      ),
    );
  }
}
