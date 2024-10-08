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
            "ListView Demo",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: [
            Image.network(
                "https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text(
              "Bhari",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVEll8uICS2xqheOz2l1Vh1DcvpEyxgVrNfw&s"),
            GestureDetector(
              onTap: () {
                print("Button Pressed");
              },
              child: Container(
                height: 50,
                color: Colors.amber,
                child: const Text("Press Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
