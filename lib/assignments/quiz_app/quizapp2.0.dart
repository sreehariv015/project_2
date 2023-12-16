import 'package:flutter/material.dart';

class QuizApp12 extends StatefulWidget {
  const QuizApp12({Key? key}) : super(key: key);

  @override
  State<QuizApp12> createState() => _QuizApp12State();
}

class _QuizApp12State extends State<QuizApp12> {
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Kids Quiz App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "Select correct answers from below:",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Lion is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
                correctAnswer: 'Carnivore',
                onOptionSelected: (bool isCorrect) {
                  if (isCorrect) {
                    setState(() {
                      score++;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Giraffe is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
                correctAnswer: 'Herbivore',
                onOptionSelected: (bool isCorrect) {
                  if (isCorrect) {
                    setState(() {
                      score++;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Elephant is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
                correctAnswer: 'Herbivore',
                onOptionSelected: (bool isCorrect) {
                  if (isCorrect) {
                    setState(() {
                      score++;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Tiger is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
                correctAnswer: 'Carnivore',
                onOptionSelected: (bool isCorrect) {
                  if (isCorrect) {
                    setState(() {
                      score++;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Bear is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
                correctAnswer: 'Omnivore',
                onOptionSelected: (bool isCorrect) {
                  if (isCorrect) {
                    setState(() {
                      score++;
                    });
                  }
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Show the score in a Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Your Score: $score'),
                    ),
                  );
                },
                child: const Text('Check Final Score'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {
                  // Reset the selection and score
                  setState(() {
                    score = 0;
                  });
                },
                child: const Text('Reset Selection'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KidsQuestionCard extends StatefulWidget {
  final String question;
  final List<String> options;
  final String correctAnswer;
  final ValueChanged<bool> onOptionSelected;

  KidsQuestionCard({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.onOptionSelected,
  });

  @override
  _KidsQuestionCardState createState() => _KidsQuestionCardState();
}

class _KidsQuestionCardState extends State<KidsQuestionCard> {
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              widget.question,
              style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12.0),
          Column(
            children: widget.options
                .map(
                  (option) => RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                  bool isCorrect = value == widget.correctAnswer;
                  widget.onOptionSelected(isCorrect);
                },
              ),
            )
                .toList(),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: QuizApp12(),
  ));
}
