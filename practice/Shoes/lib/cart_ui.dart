import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CartApp());
}

class CartApp extends StatefulWidget {
  const CartApp({super.key});

  @override
  State<CartApp> createState() => _CartState();
}

class _CartState extends State<CartApp> {
  int _count = 0;
  int _count1 = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'cart',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color.fromARGB(255, 56, 52, 52),
          ),
          title: const Text(
            'My cart',
            style: TextStyle(
              color: Color.fromARGB(230, 128, 43, 207),
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const Divider(
              color: Color.fromARGB(255, 179, 177, 177),
              thickness: 1,
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 243, 240, 240),
                ),
                padding: const EdgeInsets.all(10),
                height: 112,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset(
                      'shoes.jpeg',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nike Shoes',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'With iconic style and legendary comfort, on repeat.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              const Text(
                                '\$570.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 129,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (_count >= 1) {
                                        _count--;
                                      }
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 11.0),
                                height: 25,
                                width: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '$_count',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (_count >= 0) {
                                    _count++;
                                  }
                                  setState(() {});
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 243, 240, 240),
                ),
                padding: const EdgeInsets.all(10),
                height: 112,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Image.asset(
                      'shoes.jpeg',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 0.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Nike Shoes',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'With iconic style and legendary comfort, on repeat.',
                            style: TextStyle(
                              color: Color.fromARGB(255, 134, 134, 134),
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              const Text(
                                '\$570.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                width: 129,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      if (_count1 >= 1) {
                                        _count1--;
                                      }
                                      setState(() {});
                                    },
                                    icon: const Icon(Icons.remove),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 11.0),
                                height: 25,
                                width: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '$_count1',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  if (_count1 >= 0) {
                                    _count1++;
                                  }
                                  setState(() {});
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                height: 155,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Subtotal:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 63, 62, 62))),
                        Spacer(),
                        Text(
                          '\$800.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Delivery Fee:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 63, 62, 62),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$5.00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Discount:',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 63, 62, 62),
                          ),
                        ),
                        Spacer(),
                        Text(
                          '40%',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 20,
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(230, 128, 43, 207),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text(
                            "Checkout for \$480.00",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
