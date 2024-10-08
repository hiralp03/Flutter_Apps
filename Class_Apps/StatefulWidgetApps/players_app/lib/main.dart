import 'package:flutter/material.dart';

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {
  int _counter = 0;

  List<String> playerList = <String>[
    "https://akm-img-a-in.tosshub.com/aajtak/images/story/202111/311234-sixteen_nine.jpg?size=948:533",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3_WvAUsMYrQFdlDdkSCxpQ_vESYXRgSpMCA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqYjj38gX_aNBDJ9Rzk7A8SFJcdyEtNxws4g&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaJXRWrEnVUQIUJiy80rosEAyS3csSrbpPg0wJiZuoE7suSrvPvA5MbH30ZiuXx3Nf40U&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhdHttXRoJLwSAUlUCal-J8TSx77kEccjTaOvuTNs2Uqtb0LxRCDpHSaiYel2JYm0zAmo&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Players',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Players App'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                playerList[_counter],
                height: 300,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_counter < playerList.length - 1) {
              _counter++;
            } else {
              _counter = 0;
            }
            setState(() {});
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
