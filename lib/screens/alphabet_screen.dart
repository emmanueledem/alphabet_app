import 'package:alphabet/constants.dart';
import 'package:alphabet/services/alphabet_brain.dart';
import 'package:flutter/material.dart';

class AlphabetScreen extends StatefulWidget {
  static const id = 'AlphabetScreen';
  const AlphabetScreen({Key? key}) : super(key: key);

  @override
  _AlphabetScreenState createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  @override
  void initState() {
    super.initState();
  }

  AlphabetBrain alphaBrain = AlphabetBrain();

  @override
  Widget build(BuildContext context) {
    int image = displayImage();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: appColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        alphaBrain.displayDiscription(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // ignore: sized_box_for_whitespace
                      card(
                        Image(
                          filterQuality: FilterQuality.high,
                          width: 100,
                          image: AssetImage('asset/images/$image.png'),
                        ),
                      ),
                      card(
                        Center(
                          child: Text(
                            alphaBrain.displayObjectName(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('A'),
                      alphabetButton('B'),
                      alphabetButton('C'),
                      alphabetButton('D'),
                      alphabetButton('E'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('F'),
                      alphabetButton('G'),
                      alphabetButton('H'),
                      alphabetButton('I'),
                      alphabetButton('J'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('K'),
                      alphabetButton('L'),
                      alphabetButton('M'),
                      alphabetButton('N'),
                      alphabetButton('O'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('P'),
                      alphabetButton('Q'),
                      alphabetButton('R'),
                      alphabetButton('S'),
                      alphabetButton('T'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('U'),
                      alphabetButton('V'),
                      alphabetButton('W'),
                      alphabetButton('X'),
                      alphabetButton('Y'),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      alphabetButton('Z'),
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

  alphabetButton(letter) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            alphaBrain.getLetter(letter);
          });
        },
        child: Text(
          letter,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(10.0),
          ),
          backgroundColor: MaterialStateProperty.all(inactiveButtonColor),
        ),
      ),
    );
  }

  Container card(content) {
    return Container(
      height: 150.0,
      width: 150.0,
      child: Card(
        elevation: 1,
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: content,
        ),
      ),
    );
  }
}
