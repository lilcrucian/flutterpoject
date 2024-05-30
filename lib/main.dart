import 'package:flutter/material.dart';

void main() {
  runApp(MyClickerApp());
}

class MyClickerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Clicker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ClickerScreen(),
    );
  }
}

class ClickerScreen extends StatefulWidget {
  @override
  _ClickerScreenState createState() => _ClickerScreenState();
}

class _ClickerScreenState extends State<ClickerScreen> {
  int _counter = 0;
  double _sliderValue = 0.5; // Starting value for the slider

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _changeBackgroundColor(double value) {
    setState(() {
      _sliderValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Кликер'),
      ),
      body: Container(
        color: Color.fromRGBO(
          (255 * _sliderValue).toInt(),
          (255 * (1 - _sliderValue)).toInt(),
          255,
          1.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Кнопка была нажата вот столько раз:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _incrementCounter,
                child: Text('Click me!'),
              ),
              SizedBox(height: 20),
              Text(
                'Смена цвета фона',
              ),
              Slider(
                value: _sliderValue,
                onChanged: _changeBackgroundColor,
              ),
            ],
          ),
        ),
      )
    );
  }
}