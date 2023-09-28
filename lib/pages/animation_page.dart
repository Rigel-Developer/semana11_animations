import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({super.key});

  @override
  State<AnimationPage> createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _testAnimationController;
  late Animation _testAnimation;

  late AnimationController _testTurnController;
  late Animation<double> _testTurnAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _testAnimationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(
    //     seconds: 2,
    //   ),
    // );
    // _testAnimation = ColorTween(
    //   begin: Colors.redAccent,
    //   end: Colors.blue,
    // ).animate(_testAnimationController);

    _testTurnController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    )..repeat(reverse: true);
    _testTurnAnimation =
        CurvedAnimation(parent: _testTurnController, curve: Curves.easeIn);

    // _testAnimationController.forward();

    // _testAnimationController.addListener(() {
    //   print(_testAnimation.value);
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animation Page'),
        ),
        body: Column(
          children: [
            // AnimatedBuilder(
            //   animation: _testAnimation,
            //   builder: (context, child) {
            //     return GestureDetector(
            //       onTap: () {
            //         _testAnimationController.forward();
            //       },
            //       child: SizedBox(
            //         width: 300,
            //         height: 300,
            //         // color: Colors.red,
            //         child: Center(
            //           child: Text(
            //             "Hola",
            //             style: TextStyle(
            //               color: _testAnimation.value,
            //               fontSize: 30,
            //             ),
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _testTurnController.forward();
              },
              child: RotationTransition(
                turns: _testTurnAnimation,
                child: const Icon(
                  Icons.add,
                  size: 100,
                ),
              ),
            ),
          ],
        ));
  }
}
