import 'package:flutter/material.dart';

import 'package:location_tracker_test/binder.dart';
import 'package:location_tracker_test/home.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BinderController().dependencies();
 
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Home(),
    );
  }
}
