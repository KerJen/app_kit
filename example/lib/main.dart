import 'package:app_kit/app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Kit Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: "Hello",
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        titleStyle: TextStyle(fontSize: 26),
        trailing: Icon(Icons.abc),
        onLeadingTap: () {
          print(4);
        },
        onTrailingTap: () {
          print(3);
        },
      ),
      body: const Center(
        child: Text(
          "Test",
        ),
      ),
    );
  }
}
