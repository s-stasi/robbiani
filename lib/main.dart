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
  static String selected = 'Home/Home';
  static const Map<String, dynamic> pages = {
    'Home': <String, dynamic>{
      'Home': HomePage(),
      'Ambulatorio lombalgia': SizedBox(),
      'Mission': SizedBox(),
      'Amministrazione trasparente': SizedBox(),
      'Il personale': SizedBox(),
      'Struttura': SizedBox(),
    },
    'News': {
      'News': NewsPage(),
      'Raccolta fondi': SizedBox(),
      'Riapertura attività': SizedBox(),
      'Apertura poliambulatorio': SizedBox(),
      'Prestazioni radiologiche': SizedBox(),
      'Cura ernie lombari': SizedBox(),
    },
    'Servizi': {
      'Servizi': ServiziPage(),
      'Diagnostica e radiologia': SizedBox(),
      'Specialisti e ambulatori': SizedBox(),
      'Tecnologie': SizedBox(),
      'Degenze': SizedBox(),
      'Sala operatoria': SizedBox(),
      'Centro prelievi': SizedBox(),
    },
    'Prenotazione': PrenotazionePage(),
    'Informazioni': InfoPage(),
    'Tempi di attesa': TempiPage(),
    'Contatti': ContattiPage(),
  };

  static MyHomePageState of(BuildContext context) =>
      context.findAncestorStateOfType<MyHomePageState>()!;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  void callback(String value) {
    setState(() {
      MyHomePage.selected = value;
    });
  }

  void setPath(String path) {
    MyHomePage.selected = path;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    getRoute();
    return Scaffold(
      appBar: CustomAppBar(selected: MyHomePage.selected, callback: callback),
      body: getRoute(),
    );
  }

  Widget getRoute() {
    List<String> splitted = MyHomePage.selected.split('/');
    debugPrint('splitted = $splitted');

    dynamic temp = MyHomePage.pages;

    for (String i in splitted) {
      temp = temp[i];
      debugPrint('$temp');
    }
    return temp;
  }
}
