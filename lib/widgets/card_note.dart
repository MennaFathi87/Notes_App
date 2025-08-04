import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/models/note_model.dart';

class CardNote extends StatelessWidget {
  final NoteModel note;

  const CardNote({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24, top: 24),
      decoration: BoxDecoration(
        color: Color(note.color),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              note.title,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
            subtitle: Text(
              note.subTitle,
              style:
                  TextStyle(fontSize: 15, color: Colors.black.withOpacity(.5)),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              note.date,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
          ),
        ],
      ),
    );
  }
}
