import 'package:flutter/material.dart';

class QuizApp1 extends StatefulWidget {
  const QuizApp1({super.key});

  @override
  State<QuizApp1> createState() => _QuizApp1State();
}

class _QuizApp1State extends State<QuizApp1> {
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
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Giraffe is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Elephant is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Tiger is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
              ),
              const SizedBox(height: 16.0),
              KidsQuestionCard(
                question: 'Bear is:',
                options: ['Carnivore', 'Herbivore', 'Omnivore'],
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Check Final Score'),
              ),
              const SizedBox(height: 15.0),
              ElevatedButton(
                onPressed: () {},
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

  KidsQuestionCard({required this.question, required this.options});

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
