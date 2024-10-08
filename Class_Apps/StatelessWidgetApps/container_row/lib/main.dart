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
          title: const Text('Container in row'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.purple,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 46, 103, 211),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
