import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Two Containers'),
          backgroundColor: Colors.deepPurple, // AppBar color
        ),
        body: Center(
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // To make sure containers stay in center
            children: [
              Container(
                width: 360,
                height: 200,
                color: Colors.blue, // First container color
                margin: const EdgeInsets.only(
                    bottom: 20), // Space between containers
              ),
              Container(
                width: 360,
                height: 200,
                color: Colors.green, // Second container color
              ),
            ],
          ),
        ),
      ),
    );
  }
}
