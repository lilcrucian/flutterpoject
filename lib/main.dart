import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class PlatformSpecificWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String platformMessage;
    if (kIsWeb) {
      platformMessage = "Running on the Web";
    } else if (Platform.isAndroid) {
      platformMessage = "Running on Android";
    } else if (Platform.isWindows) {
      platformMessage = "Running on Windows";
    } else {
      platformMessage = "Running on an unsupported platform";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform depend'),
      ),
      body: Center(
        child: Text(platformMessage, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Platform Specific App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlatformSpecificWidget(),
    );
  }
}