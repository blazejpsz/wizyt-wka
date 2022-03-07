// ignore_for_file: slash_for_doc_comments

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Droids on roids',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const MyHomePage(title: 'Błażej Pszczółkowski for Droids on roids'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const defaultCellState = true;

  int tappedIndex = 9;
  List cellState = [
    defaultCellState, // 0
    defaultCellState, // 1
    defaultCellState, // 2
    defaultCellState, // 3
    defaultCellState, // 4
    defaultCellState, // 5
    defaultCellState, // 6
    defaultCellState, // 7
    defaultCellState, // 8
  ];

  get linkText => null;

  get defaultText => null;

  void _tappedBox(int idx) {
    print('tapped $idx');
    if (tappedIndex != idx && tappedIndex < 9) {
      cellState[tappedIndex] = defaultCellState;
    }
    tappedIndex = idx;
    cellState[tappedIndex] = !cellState[tappedIndex];

    setState(() {});
  }

  double _borderWidth(int index) => (index == tappedIndex) ? 3.0 : 1.0;
  double fontSize(int index) => (index == tappedIndex) ? 30.0 : 15.0;
  Color _borderColor(int index) => (index == tappedIndex)
      ? Color.fromARGB(255, 211, 71, 66)
      : Color.fromARGB(255, 168, 211, 240);

  /**********************************************************
           *                                                        *
           *         Funcion change photo / text                    *
           *                                                        *
           *********************************************************/

  Widget _selectedWidget_0() {
    if (cellState[0]) {
      return Image.asset('images/bp_1.jpg');
    }
    return Image.asset('images/adam.JPG');
  }

  Widget _selectedWidget_1() {
    if (cellState[1]) {
      return Image.asset('images/bp_2.jpg');
    }
    return Align(
        alignment: Alignment.center,
        child: Text("""Po lewej i prawej moje dwie kochane pociechy.\n
  Na lewo Adaś (2,5 roku),
  Na prawo Kacper (6,5).""",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize(0))));
  }

  Widget _selectedWidget_2() {
    if (cellState[2]) {
      return Image.asset('images/bp_3.jpg');
    }
    return Image.asset('images/kacper.jpg');
  }

  Widget _selectedWidget_3() {
    if (cellState[3]) {
      return Image.asset('images/bp_4.jpg');
    }
    return Align(
        alignment: Alignment.center,
        child: Text(
            """Cześć, mam na imię Błażej i od ponad 10 lat prowadzę agencję fotograficzną w Poznaniu. 2 lata temu postanowiłem zmienić swój kierunek działania. Nowy kierunek rozwoju obrałem pod wpływem swojego taty, programisty. Od lat dzielił się ze mną swoją wiedzą w tym zakresie. Wraz ze wzrostem świadomości i mojej wiedzy zdecydowałem, że bliżej mi do łączenia backendu z
frontendem. Moją ambicją jest tworzenie aplikacji mobilnych, dlatego w ostatnim czasie intensywnie uczę się Fluttera. """,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize(0))));
  }

  Widget _selectedWidget_4() {
    if (cellState[4]) {
      return Image.asset('images/bp_5.jpg');
    }
    return Align(
        alignment: Alignment.center,
        child: Text(
            "Cześć, jestem Błażej Pszczółkowski,\n fotograf i właściciel agencji fotograficznej Flash Group,\n obecnie robie wszystko by wkrótce stać się Flutter Developer",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize(40))));
  }

  Widget _selectedWidget_5() {
    if (cellState[5]) {
      return Image.asset('images/bp_6.jpg');
    }
    return Align(
        alignment: Alignment.center,
        child: Text(
            'Oczekiwania ? \n Przygotowałem dla Was projekt, ponieważ szukam, firmy, która pomoże mi w nauce przy podstawowych projektach komercyjnych oraz wprowadzi na rynek pracy',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: fontSize(0))));
  }

  Widget _selectedWidget_6() {
    if (cellState[6]) {
      return Image.asset('images/bp_7.jpg');
    }
    return Image.asset('images/gory.jpg');
  }

  Widget _selectedWidget_7() {
    if (cellState[7]) {
      return Image.asset('images/bp_8.jpg');
    }
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            const TextSpan(
              text: "Phone number: 608 142 707\n",
              style: TextStyle(color: Colors.black),
            ),
            TextSpan(
              text: 'Linkedin\n',
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      'https://www.linkedin.com/in/b%C5%82a%C5%BCej-pszcz%C3%B3%C5%82kowski-00955b192/');
                },
            ),
            TextSpan(
              text: 'Github',
              style: const TextStyle(color: Colors.blue),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch('https://github.com/blazejpsz/');
                },
            )
          ],
        ),
      ),
    );
  }

  Widget _selectedWidget_8() {
    if (cellState[8]) {
      return Image.asset('images/bp_9.jpg');
    }
    return Image.asset('images/flash.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          /**********************************************************
           *                                                        *
           *                     W I E R S Z   0                    *
           *                                                        *
           *********************************************************/

          // ----------------------------------------------
          // box nr. 0 - imię i nazwisko
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(0),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: _borderColor(0), width: _borderWidth(0))),
                child: _selectedWidget_0()),
          ),
          // ----------------------------------------------
          // box nr. 1 - moje zdjęcie
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(1),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(1), width: _borderWidth(1)),
                ),
                child: _selectedWidget_1()),
          ),
          // ----------------------------------------------
          // box nr. 2 - co chcę
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(2),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(2), width: _borderWidth(2)),
                ),
                child: _selectedWidget_2()),
          ),

          /**********************************************************
           *                                                        *
           *                     W I E R S Z   1                    *
           *                                                        *
           *********************************************************/

          // ----------------------------------------------
          // box nr. 3
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(3),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(3), width: _borderWidth(3)),
                ),
                child: _selectedWidget_3()),
          ),
          // ----------------------------------------------
          // box nr. 4
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(4),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(4), width: _borderWidth(4)),
                ),
                child: _selectedWidget_4()),
          ),
          // ----------------------------------------------
          // box nr. 5
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(5),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(5), width: _borderWidth(5)),
                ),
                child: _selectedWidget_5()),
          ),

          /**********************************************************
           *                                                        *
           *                     W I E R S Z   2                    *
           *                                                        *
           *********************************************************/

          // ----------------------------------------------
          // box nr. 6
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(6),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(6), width: _borderWidth(6)),
                ),
                child: _selectedWidget_6()),
          ),
          // ----------------------------------------------
          // box nr. 7
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(7),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(7), width: _borderWidth(7)),
                ),
                child: _selectedWidget_7()),
          ),
          // ----------------------------------------------
          // box nr. 8
          // ----------------------------------------------
          GestureDetector(
            onTap: () => _tappedBox(8),
            child: Container(
                margin: const EdgeInsets.all(0.0),
                padding: const EdgeInsets.all(0.0),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: _borderColor(8), width: _borderWidth(8)),
                ),
                child: _selectedWidget_8()),
          ),
        ],
      ),
    );
  }
}
