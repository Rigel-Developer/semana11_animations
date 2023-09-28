import 'package:flutter/material.dart';
import 'package:semana11_animations/utils/responsive.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Media Page'),
      // ),
      body: Column(
        children: <Widget>[
          Container(
            width: ResponsiveUI.wpStatic(context, 0.10),
            height: ResponsiveUI.hpStatic(context, 1),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
