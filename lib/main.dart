import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Шапка'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Привет Мир!', style: TextStyle(
            fontSize: 32,
            color: Colors.grey[600]
          ),),
        ),
      ),
    );
  }
}