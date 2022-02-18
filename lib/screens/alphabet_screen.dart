import 'package:flutter/material.dart';

class AlphabetScreen extends StatefulWidget {
  static const id = 'AlphabetScreen';
  const AlphabetScreen({Key? key}) : super(key: key);

  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <Widget>[],
          ),
        ),
      ),
    );
  }
}
