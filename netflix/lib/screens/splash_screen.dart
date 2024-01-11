import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/data.dart/colors.dart';
import 'package:netflix/data.dart/functions.dart';
import 'package:netflix/data.dart/variables.dart';
import 'package:netflix/screens/onboarding_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void nextPage() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        visible();
      });
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnBoarding(),
          ),
        );
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: LottieBuilder.asset(
                  "assets/videos/Animation - 1704985148474.json",
                  fit: BoxFit.contain,
                  repeat: false,
                  animate: true,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 500),
              child: Center(
                child: Visibility(
                  visible: visibility,
                  child: CircularProgressIndicator(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
