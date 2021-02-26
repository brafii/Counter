import 'package:flutter/material.dart';

void main() {
  runApp(DonutApp());
}

class DonutApp extends StatefulWidget {
  @override
  _DonutAppState createState() => _DonutAppState();
}

class _DonutAppState extends State<DonutApp> {

  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Donut Application'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
                'Number of Donuts to buy $number',
              style: TextStyle(
                fontSize: 40.0
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              number++;
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}



