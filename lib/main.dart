import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';
import 'notes_services.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NotesServices(),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes DApp',
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
    );
  }
}
