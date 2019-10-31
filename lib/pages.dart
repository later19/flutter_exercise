import 'package:flutter/material.dart';
import 'custome.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('first page', style: TextStyle(fontSize: 26.0)),
        elevation: 14.0,
      ),
      body: Center(
        child: MaterialButton(
          child: Icon(
            Icons.home,
            color: Colors.grey,
            size: 63.0,
          ),
          onPressed: () {
            Navigator.of(context).push(Custome(Secondpage()));
          },
        ),
      ),
    );
  }
}

class Secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        appBar: AppBar(
          title: Text(
            'SecondPage',
            style: TextStyle(fontSize: 18.0),
          ),
          backgroundColor: Colors.pinkAccent,
          // leading: Container(),
          elevation: 0.0,
        ),
        body: Center(
          child: MaterialButton(
            child: Icon(Icons.navigate_before, color: Colors.white, size: 64.0),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ));
  }
}
