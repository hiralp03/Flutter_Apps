import 'package:flutter/material.dart';

void main() {
  runApp(const ShoppingApp());
}

class ShoppingApp extends StatefulWidget {
  const ShoppingApp({super.key});

  @override
  State<ShoppingApp> createState() => _ShoppingAppState();
}

class _ShoppingAppState extends State<ShoppingApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping App',
      color: Colors.amber,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Shoes',
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Color.fromARGB(230, 128, 43, 207),
            ),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              color: const Color.fromARGB(230, 128, 43, 207),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                "https://img.pikbest.com/wp/202408/sneakers-shoes-the-concept-of-fashionable-stunning-bright-rendered-in-3d_9829435.jpg!sw800",
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Nike Air Force 1"07',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(230, 128, 43, 207),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'SHOES',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(230, 128, 43, 207),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text(
                      'FOOTWEAR',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                    'With iconic style and legendary comfort, the AF-1 was made to be worn\non repeat. This iteration puts a fresh spin on the hoopsclassic with crisp\nleather, era-echoing 80s contruction and reflective-design Swoosh logos.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 61, 55, 55),
                      fontWeight: FontWeight.w500,
                    ))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Quantity',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        icon: const Icon(Icons.remove),
                        splashRadius: 20,
                        onPressed: () {
                          if (count > 0) {
                            count--;
                          }
                          setState(() {});
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          '$count',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.add),
                        splashRadius: 20,
                        onPressed: () {
                          if (count >= 0) {
                            count++;
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(230, 128, 43, 207),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    "PURCHASE",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
