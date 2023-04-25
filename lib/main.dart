import 'package:flutter/material.dart';
import 'package:image_gallery/screens/SplashScreen.dart';
import 'package:supabase_auth_ui/supabase_auth_ui.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://rbrxhdpaqdenmxhedwve.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJyb2xlIjoiYW5vbiIsImlhdCI6MTY0MDI5ODQ1NiwiZXhwIjoxOTU1ODc0NDU2fQ.3VC0TIEJVqLj3NqU2Xws9YeT7aseK8TCXAqzKF1fM7w',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home:
          // const HomeScreen(),
          const SplashScreen(),
    );
  }
}
