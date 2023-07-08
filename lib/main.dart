import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskdemo/module/view/challenge_screen.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Challenge App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePageNew(title: 'Flutter Demo Home Page'),
      home:ChallengeScreen(),
    );
  }
}