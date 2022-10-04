import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:withprovider/Screens/CountExample.dart';
import 'package:withprovider/Provider/count_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=> CountProvider(),
        child: MaterialApp(
          home: CountExample(),
        ),
    );

  }
}

