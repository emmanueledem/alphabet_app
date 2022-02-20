int displayImage() {
  return buttonIndex;
}

int buttonIndex = 0;

class AlphabetBrain {
  List descriptionList = [
    'Letter A is for Apple',
    'Letter B is for Bag',
    'Letter C is for Car',
    'Letter D is for Duck',
    'Letter E is for Egg',
    'Letter F is for Frog',
    'Letter G is for Gate',
    'Letter H is for Hat',
    'Letter I is for Ink',
    'Letter J is for Jug',
    'Letter K is for King',
    'Letter L is for Lamp',
    'Letter M is for Monkey',
    'Letter N is for Net',
    'Letter O is for Oil',
    'Letter P is for Phone',
    'Letter Q is for Queen',
    'Letter R is for Rat',
    'Letter S is for Soap',
    'Letter T is for Table',
    'Letter U is for Umbrella',
    'Letter V is for Violin',
    'Letter W is for Water',
    'Letter X is for X-ray',
    'Letter Y is for Yam',
    'Letter Z is for Zebra',
  ];

  List objectName = [
    'Apple',
    'Bag',
    'Car',
    'Duck',
    'Egg',
    'Frog',
    'Gate',
    'Hat',
    'Ink',
    'Jug',
    'King',
    'Lamp',
    'Monkey',
    'Net',
    'Oil',
    'Phone',
    'Queen',
    'Rat',
    'Soap',
    'Table',
    'Umbrella',
    'Violin',
    'Water',
    'X-ray',
    'Yam',
    'Zebra'
  ];

  String displayDiscription() {
    return descriptionList[buttonIndex];
  }

  String displayObjectName() {
    return objectName[buttonIndex];
  }

  void getLetter(String letter) {
    if (letter == 'A') {
      buttonIndex = 0;
    } else if (letter == 'B') {
      buttonIndex = 1;
    } else if (letter == 'C') {
      buttonIndex = 2;
    } else if (letter == 'D') {
      buttonIndex = 3;
    } else if (letter == 'E') {
      buttonIndex = 4;
    } else if (letter == 'F') {
      buttonIndex = 5;
    } else if (letter == 'G') {
      buttonIndex = 6;
    } else if (letter == 'H') {
      buttonIndex = 7;
    } else if (letter == 'I') {
      buttonIndex = 8;
    } else if (letter == 'J') {
      buttonIndex = 9;
    } else if (letter == 'K') {
      buttonIndex = 10;
    } else if (letter == 'L') {
      buttonIndex = 11;
    } else if (letter == 'M') {
      buttonIndex = 12;
    } else if (letter == 'N') {
      buttonIndex = 13;
    } else if (letter == 'O') {
      buttonIndex = 14;
    } else if (letter == 'P') {
      buttonIndex = 15;
    } else if (letter == 'Q') {
      buttonIndex = 16;
    } else if (letter == 'R') {
      buttonIndex = 17;
    } else if (letter == 'S') {
      buttonIndex = 18;
    } else if (letter == 'T') {
      buttonIndex = 19;
    } else if (letter == 'U') {
      buttonIndex = 20;
    } else if (letter == 'V') {
      buttonIndex = 21;
    } else if (letter == 'W') {
      buttonIndex = 22;
    } else if (letter == 'X') {
      buttonIndex = 23;
    } else if (letter == 'Y') {
      buttonIndex = 24;
    } else if (letter == 'Z') {
      buttonIndex = 25;
    } else {
      buttonIndex = 0;
    }
  }
}
