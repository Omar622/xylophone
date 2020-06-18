import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(Z0());

class Z0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      title: 'xylophone',
      home: Z1(),
    );
  }
}

class Z1 extends StatefulWidget {
  @override
  _Z1State createState() => _Z1State();
}

class _Z1State extends State<Z1> {
  Expanded displayKy(Color color, int n){
    return Expanded(
      child: FlatButton(
        child: Text(''),
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$n.wav');
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            displayKy(Colors.red, 1),
            displayKy(Colors.orange, 2),
            displayKy(Colors.yellow, 3),
            displayKy(Colors.green, 4),
            displayKy(Colors.teal, 5),
            displayKy(Colors.blue, 6),
            displayKy(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
