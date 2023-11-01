import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:music_app/persentation/page_1.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCsurmsIp0zeY7i20FKDu5F2Mk3X9qjQok",
          appId: "1:726388111447:android:a474ddde92923416c04b12",
          messagingSenderId: "726388111447",
          projectId: "music-9dc68"));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: screen_1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
