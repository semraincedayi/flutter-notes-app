import 'package:flutter/material.dart';
import 'pages/notes_list_page.dart';
import 'package:hive/hive.dart'; // TODO Implement this library.;
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Note App',
//       home: NoteListScreen(),
//     );
//   }
// }
