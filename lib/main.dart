import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semana11_animations/pages/home_page.dart';
import 'package:semana11_animations/pages/media_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
      overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MediaPage(),
    );
  }
}
