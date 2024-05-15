import 'package:flutter/material.dart';
import 'package:flutter_app/models/hive.dart';
import 'package:hive/hive.dart'; // TODO Implement this library.;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  final notesDocument = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(notesDocument.path);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      
    );
  }
}

class NoteListScreen extends StatefulWidget {
  @override
  _NoteListScreen createState() => _NoteListScreen();
}

class _NoteListScreen extends State<NoteListScreen> {
  late Box<Notes> noteBox;
  @override
  void initState() {
    super.initState();
    noteBox = Hive.box<Notes>('notes');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notes'),
      ),
      body: Center(
        child: Text('notelisteleme'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //bu kısıma girilen veri eklenecek artı olarak aynısı not ve başlık için oluşturulacak
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
