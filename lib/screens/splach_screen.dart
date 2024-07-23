import 'package:edulearn/screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Signin()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(7),
            ),
            Image.asset(
              'assets/edulearn.png',
              width: 300,
            ),
            SizedBox(
              height: 5,
            ),
            Image.asset(
              'assets/logo-no-background 2.png',
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
