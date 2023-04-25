import 'package:flutter/material.dart';
import 'package:image_gallery/constants.dart';
import 'package:image_gallery/screens/HomeScreen.dart';
import 'package:image_gallery/screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirect();
  }

  Future<void> _redirect() async {
    // await for for the widget to mount
    await Future.delayed(Duration.zero);

    final session = supaClient.auth.currentSession;
    if (session == null) {
      Navigator.of(context)
          .pushAndRemoveUntil(LogInScreen.route(), (route) => false);
    } else {
      Navigator.of(context)
          .pushAndRemoveUntil(HomeScreen.route(), (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
