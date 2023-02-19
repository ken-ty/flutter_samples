import 'package:flutter/material.dart';
import 'package:randomuser/api_call/api_call_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'randomuser',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ApiCallPage(title: 'randomuser sample'),
    );
  }
}
