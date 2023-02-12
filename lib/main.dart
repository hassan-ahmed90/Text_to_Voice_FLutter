import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Voice Over',
        theme: ThemeData(


        ),
        home: Scaffold(
            backgroundColor: Colors.yellow,
            appBar: AppBar(
              backgroundColor: Colors.black87,
              title: Text('VOICE OVER'),
              centerTitle: true,
            ),
            body: Center(
              child: TextSpeech(),
            )
        )
    );
  }
}
class TextSpeech extends StatelessWidget {

  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = new TextEditingController();
  speek(String text)async{
    await flutterTts.setLanguage('en-US');
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(

              controller: textEditingController,
              decoration: InputDecoration(
                  labelText: "Write a Speech",
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                  ),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)
                  )
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(

              onPressed: (){
                speek(textEditingController.text);
              }, child: Text("Press Yes to Listen this Text"),

            )
          ],
        ),
      ),
    );
  }
}
