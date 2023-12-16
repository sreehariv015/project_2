import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
class TextToSpeech extends StatefulWidget {
  const TextToSpeech({super.key});

  @override
  State<TextToSpeech> createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  var speaking=TextEditingController();
  FlutterTts flutterTts = FlutterTts();
  Future _speak(String text) async {
    await flutterTts.setLanguage('ar-tn');
    await flutterTts.setPitch(2);
    await flutterTts.speak(text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: speaking,


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {
                _speak(speaking.text);

              }, child: const Text("Speak"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
