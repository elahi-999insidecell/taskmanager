// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taskmanager/ui/screens/loginpage.dart';
import 'package:taskmanager/ui/utils/asset_path.dart';
import 'package:taskmanager/ui/utils/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _movetoNextScreen();
  }

  Future<void> _movetoNextScreen() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LogInPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ScreenBackground(
              child: Center(
                child: SvgPicture.asset(AssetPath.logoSVG, height: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
