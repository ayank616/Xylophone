import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void notes(int note) {
    final player = AudioPlayer();
    player.play(AssetSource('note$note.wav'));
  }

  Expanded buildkey({Color? color, int? note}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          notes(note!);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: const Center(
                child: Text(
                  'Xylophone',
                  style: TextStyle(fontFamily: 'Pacifico', letterSpacing: 2),
                ),
              ),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildkey(color: Colors.red, note: 1),
                  buildkey(color: Colors.green, note: 2),
                  buildkey(color: Colors.blue, note: 3),
                  buildkey(color: Colors.yellow, note: 4),
                  buildkey(color: Colors.pink, note: 5),
                  buildkey(color: Colors.purple, note: 6),
                  buildkey(color: Colors.teal, note: 7),
                ],
              ),
            ),
          ),
        ));
  }
}
