import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'APPBAR',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
              color: Colors.black,
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}
