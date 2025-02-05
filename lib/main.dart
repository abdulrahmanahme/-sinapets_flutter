import 'package:flutter/material.dart';
import 'package:sinapets_flutter/core/widgets/align_screen.dart';
import 'package:sinapets_flutter/core/widgets/dialog_screen.dart';
import 'package:sinapets_flutter/core/widgets/show_bottom_sheet_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const DialogScreen(),
    );
  }
}

