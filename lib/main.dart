import 'package:flutter/material.dart';
import 'package:parcial2/page_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PagePrincipal(),
    );
  }
}
