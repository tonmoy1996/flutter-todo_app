import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/home_page.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  // init the hive
  // await Hive.initFlutter();
  //
  // // open a box

  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}
