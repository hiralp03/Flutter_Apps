import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
  ];

  bool questionScreen = true;
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  Color? checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return Colors.green;
      } else if (buttonIndex == selectedAnswerIndex) {
        return Colors.red;
      }
    }
    return null;
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (selectedAnswerIndex ==
        allQuestions[currentQuestionIndex]["correctAnswer"]) {
      noOfCorrectAnswers++;
    }

    if (currentQuestionIndex < allQuestions.length - 1) {
      currentQuestionIndex++;
      selectedAnswerIndex = -1;
    } else {
      setState(() {
        questionScreen = false;
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: questionScreen ? buildQuestionScreen() : buildResultScreen(),
      floatingActionButton: questionScreen
          ? FloatingActionButton(
              onPressed: validateCurrentPage,
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            )
          : null,
    );
  }

  Widget buildQuestionScreen() {
    return Column(
      children: [
        const SizedBox(height: 31),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 41),
        SizedBox(
          width: 400,
          child: Text(
            allQuestions[currentQuestionIndex]["question"],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(height: 40),
        for (int i = 0; i < 4; i++) ...[
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedAnswerIndex = i;
                });
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    checkAnswer(i) ?? const Color.fromARGB(255, 209, 209, 209)),
              ),
              child: Text(
                allQuestions[currentQuestionIndex]["options"][i],
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ],
    );
  }

  Widget buildResultScreen() {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCsvnMLZqhqjzGCRGsuummL-gdRWPeL2ZH6w&s",
                height: 200,
                width: 200,
              ),
              const SizedBox(height: 20),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "You have successfully completed the Quiz",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "$noOfCorrectAnswers / ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestionIndex = 0;
                    questionScreen = true;
                    noOfCorrectAnswers = 0;
                    selectedAnswerIndex = -1;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(230, 128, 43, 207),
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
