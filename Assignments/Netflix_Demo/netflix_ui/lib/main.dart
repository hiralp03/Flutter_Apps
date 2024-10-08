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
            "Netflix Demo",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Action Movies",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child: Image.network(
                              "https://cms-assets.tutsplus.com/cdn-cgi/image/width=360/uploads/users/1990/posts/32113/image/!!.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
