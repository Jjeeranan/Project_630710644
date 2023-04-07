//ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:project_630710644/pages/project/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const ProjectListPage(),
    );
  }
}

