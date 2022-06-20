import 'package:flutter/material.dart';
import 'package:robbiani/prenotazione-page.dart';
import 'appbar/appbar.dart';
import 'contatti-page.dart';
import 'home-page.dart';
import 'info-page.dart';
import 'news-page.dart';
import 'servizi-page.dart';
import 'tempi-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuovo Robbiani',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF2795BB),
        ),
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),
      initialRoute: 'Home',
      routes: {'Home': (context) => const MyHomePage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static String selected = 'Home';
  final Map<String, dynamic> pages = const {
    'Home': <String, dynamic>{'Home': HomePage()},
    'News': NewsPage(),
    'Servizi': ServiziPage(),
    'Prenotazione': PrenotazionePage(),
    'Informazioni': InfoPage(),
    'Tempi di attesa': TempiPage(),
    'Contatti': ContattiPage()
  };

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void callback(String value) {
    setState(() {
      MyHomePage.selected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(selected: MyHomePage.selected, callback: callback),
      body: widget.pages[MyHomePage.selected]['Home'],
    );
  }
}
