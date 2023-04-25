import 'package:flutter/material.dart';
import 'package:image_gallery/screens/HomeScreen.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const LogInScreen(),
    );
  }

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: SupaMagicAuth(onSuccess: (session) {
          Navigator.of(context).pushAndRemoveUntil(
            HomeScreen.route(),
            (route) => false,
          );
        }),
      ),
    );
  }
}
