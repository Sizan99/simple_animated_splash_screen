import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _naivatetohome();
  }

  _naivatetohome() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Image(
            image: AssetImage('asset/backgound.jpg'),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  'SPLASH',
                  speed: const Duration(milliseconds: 150),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Horizon',
                    fontSize: 60,
                  ),
                ),
                TyperAnimatedText(
                  'SCREEN',
                  speed: const Duration(milliseconds: 150),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontFamily: 'HorizonOutline',
                    fontSize: 60,
                  ),
                ),
              ],
              totalRepeatCount: 1,
            ),
          ),
        ]),
      ),
    );
  }
}
