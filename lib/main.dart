import 'package:flutter/material.dart';
import 'package:robbiani/prenotazione-page.dart';
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
  static String selected = 'Home/Home';
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
      routes: {
        'Home': (context) => const HomePage(), // done
        'Home/Ambulatorio lombalgia': (context) => const SizedBox(),
        'Home/Mission': (context) => const SizedBox(),
        'Home/Amministrazionetrasparente': (context) => const SizedBox(),
        'Home/Il personale': (context) => const SizedBox(),
        'Home/Struttura': (context) => const SizedBox(),
        'News': (context) => const NewsPage(), // done
        'News/Raccolta fondi': (context) => const SizedBox(),
        'News/Riapertura attività': (context) => const SizedBox(),
        'News/Apertura poliambulatorio': (context) => const SizedBox(),
        'News/Prestazioni radiologiche': (context) => const SizedBox(),
        'News/Ernie lombari': (context) => const SizedBox(),
        'Servizi': (context) => const ServiziPage(),
        'Servisi/Diagnostica e radiologia': (context) => const SizedBox(),
        'Servisi/Specialisti e ambulatori': (context) => const SizedBox(),
        'Servisi/Tecnologie': (context) => const SizedBox(),
        'Servisi/Degenze': (context) => const SizedBox(),
        'Servisi/Sala operatoria': (context) => const SizedBox(),
        'Servisi/Centro prelievi': (context) => const SizedBox(),
        'Prenotazione': (context) => const PrenotazionePage(),
        'Informazioni': (context) => const InfoPage(),
        'Tempi di attesa': (context) => const TempiPage(),
        'Contatti': (context) => const ContattiPage(),
      },
    );
  }
}
