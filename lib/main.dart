import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/constant/constant.dart';
import 'package:notesapp/cubits/notes_cubite/notes_cubite.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/simpl_bloc_observer.dart';
import 'package:notesapp/veiws/notes_veiw.dart';

void main() async {
  await Hive.initFlutter();
   //
  Hive.registerAdapter(NoteModelAdapter());
  ///
  Bloc.observer = SimpleBlocObserver();
  //
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NotesView(),
      ),
    );
  }
}
