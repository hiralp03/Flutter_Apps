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
            title: const Text("Centre Text"),
            centerTitle: true,
            backgroundColor: Colors.amber,
            leadingWidth: MediaQuery.sizeOf(context).width - 150,
          ),
          body: const Center(
            child: Text(
              "KNOW THE CODE\n  TILL THE CORE",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
