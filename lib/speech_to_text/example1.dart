import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as sst;
class SpeechToText1 extends StatefulWidget {
  const SpeechToText1({super.key});

  @override
  State<SpeechToText1> createState() => _SpeechToText1State();
}

class _SpeechToText1State extends State<SpeechToText1> {
  sst.SpeechToText _speechToText = sst.SpeechToText();
  String _text = 'Press the button and start speaking';

  void _listen() async{
    if (await _speechToText.initialize()) {
      _speechToText.listen(
        onResult: (result) {
          setState(() {
            _text = result.recognizedWords;
          });
        },
      );
    } else{

      print('Speech recognition not available');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_text),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              _listen();
            }, child: const Text('Start Listening'))
          ],
        ),
      ),

    );
  }
}
