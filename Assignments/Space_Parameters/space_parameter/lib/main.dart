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
            "Column Demo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 58, 110, 252),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
