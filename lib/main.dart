import 'package:flutter/material.dart';

import 'screen/splash.dart';
import 'screen/login.dart';

const save_key_name = 'usserloggedin';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login Page",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Screensplash(),  
    );
     }
}
