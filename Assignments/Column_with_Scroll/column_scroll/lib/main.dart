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
            'Scrollable Column',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                  "https://images.ctfassets.net/hrltx12pl8hq/28ECAQiPJZ78hxatLTa7Ts/2f695d869736ae3b0de3e56ceaca3958/free-nature-images.jpg?fit=fill&w=1200&h=630"),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
              ),
              Image.network(
                  "https://i0.wp.com/picjumbo.com/wp-content/uploads/magical-spring-forest-scenery-during-morning-breeze-free-photo.jpg?w=600&quality=80"),
              Container(
                height: 200,
                width: 200,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
