import 'package:alphabet/constants.dart';
import 'package:alphabet/services/AlphabetBrain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphabetScreen extends StatefulWidget {
  static const id = 'AlphabetScreen';
  const AlphabetScreen({Key? key}) : super(key: key);

  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  AlphabetBrain alphaBrain = AlphabetBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: appColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Text(
                        'Letter A is for Apple',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ignore: sized_box_for_whitespace
                      card(
                        const Image(
                          filterQuality: FilterQuality.high,
                          width: 150,
                          image: AssetImage('asset/images/1.png'),
                        ),
                      ),
                      card(
                        const Center(
                          child: Text(
                            'Apple',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('A'),
                      AlphabetButton('B'),
                      AlphabetButton('C'),
                      AlphabetButton('D'),
                      AlphabetButton('E'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('F'),
                      AlphabetButton('G'),
                      AlphabetButton('H'),
                      AlphabetButton('I'),
                      AlphabetButton('J'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('K'),
                      AlphabetButton('L'),
                      AlphabetButton('M'),
                      AlphabetButton('N'),
                      AlphabetButton('O'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('P'),
                      AlphabetButton('Q'),
                      AlphabetButton('R'),
                      AlphabetButton('S'),
                      AlphabetButton('T'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('U'),
                      AlphabetButton('V'),
                      AlphabetButton('W'),
                      AlphabetButton('X'),
                      AlphabetButton('Y'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AlphabetButton('Z'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton AlphabetButton(letter) {
    return ElevatedButton(
      onPressed: () {
        alphaBrain.getLetter(letter);
      },
      child: Text(
        letter,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          EdgeInsets.all(10.0),
        ),
        backgroundColor: MaterialStateProperty.all(inactiveButtonColor),
      ),
    );
  }

  Container card(content) {
    return Container(
      height: 170.0,
      width: 170.0,
      child: Card(
        elevation: 1,
        color: Colors.white70,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: content,
        ),
      ),
    );
  }
}
