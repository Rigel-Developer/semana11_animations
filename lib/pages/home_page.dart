import 'dart:math';

import 'package:flutter/material.dart';
import 'package:semana11_animations/pages/animation_page.dart';
import 'package:semana11_animations/pages/hero_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int flagContainer = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                children: [
                  Hero(
                    tag: "batman-1",
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 100,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HeroPage()));
                    },
                    child: const Text("Hero Animation"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedAlign
                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                    child: AnimatedAlign(
                      alignment: Alignment.topCenter,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves
                          .bounceOut, //Revisar Curves en la documentación https://api.flutter.dev/flutter/animation/Curves-class.html
                      child: Image.asset(
                        'assets/images/batman.jpg',
                        height: 50,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedContainer
                  GestureDetector(
                    onTap: () {
                      flagContainer = 30 + Random().nextInt(224);
                      setState(() {});
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves
                          .bounceOut, //Revisar Curves en la documentación https://api.flutter.dev/flutter/animation/Curves-class.html
                      width: flagContainer.toDouble(),
                      height: flagContainer.toDouble(),

                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(flagContainer.toDouble()),
                        color: Color.fromRGBO(flagContainer, 100, 23, 1),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedCrossFade
                  AnimatedCrossFade(
                    duration: const Duration(milliseconds: 1500),
                    firstChild: const FlutterLogo(
                      style: FlutterLogoStyle.horizontal,
                      size: 100.0,
                    ),
                    secondChild: const FlutterLogo(
                      style: FlutterLogoStyle.stacked,
                      size: 100.0,
                    ),
                    crossFadeState: flagContainer > 150
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedDefaultTextStyle

                  AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves
                        .bounceOut, //Revisar Curves en la documentación https://api.flutter.dev/flutter/animation/Curves-class.html
                    style: TextStyle(
                      fontSize: flagContainer.toDouble(),
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                    child: const Text("Flutter"),
                  ),

                  //AnimatedOpacity
                  //
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 1500),
                    opacity: 0.5,
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 100,
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  const AnimatedOpacity(
                    duration: Duration(milliseconds: 1500),
                    opacity: .3,
                    child: Text(
                      "Flutter",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedPhysicalModel
                  AnimatedPhysicalModel(
                    duration: const Duration(milliseconds: 1500),
                    curve: Curves
                        .bounceOut, //Revisar Curves en la documentación https://api.flutter.dev/flutter/animation/Curves-class.html
                    elevation: 1,
                    shape: BoxShape.rectangle,
                    shadowColor: Colors.black,
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/batman.jpg',
                      height: 100,
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  //AnimatedPositioned

                  Container(
                    width: 300,
                    height: 300,
                    color: Colors.red,
                    child: Stack(children: [
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves
                            .bounceOut, //Revisar Curves en la documentación https://api.flutter.dev/flutter/animation/Curves-class.html
                        top: 40,
                        left: 30,
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AnimationPage(),
                          ),
                        );
                      },
                      child: const Text("Animation Page")),
                ],
              ),
            ),
          ),
        ));
  }
}
