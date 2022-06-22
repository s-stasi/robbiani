import 'package:flutter/material.dart';
import 'package:robbiani/appbar/appbar.dart';
import 'package:robbiani/standard_widgets/buttons.dart';
import 'package:robbiani/standard_widgets/cards.dart';
import 'standard_widgets/footer.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Widget> list = [
    CustomCard(
      title: 'APERTURA POLIAMBULATORIO MEDICINA DELLO SPORT',
      child: SizedBox(
        height: 300,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Da Martedì 02 Novembre 2021 al Polo sanitario Nuovo Robbiani in Via Inzani n° 4, 26015 Soresina (CR), apre il nuovo Ambulatorio di medicina Sportiva.'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Con la possibilità di prenotare via mail cup@nuovorobbiani.it , telefonicamente componendo il 0374 415465 , mandando un messaggio da App WhatsApp al numero 348 6110090, oppure direttamente on-line con la possibilità di scegliere il giorno e la fascia oraria tutto attraverso il sito medicinasportiva.nuovorobbiani.it'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LinkButton(link: 'News/Apertura poliambulatorio'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    CustomCard(
      title: 'RIAPERTURA ATTIVITÀ',
      child: SizedBox(
        height: 300 + 45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Gentili Clienti'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Come da delibera di Regione Lombardia XI / 3115, l’accesso in Struttura può avvenire solo previa prenotazione della prestazione.'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Potete prenotare:'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                children: [
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Telefonando al CUP: 0374 415901'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                children: [
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Scrivendo al cup: cup@nuovorobbiani.it'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                children: [
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                          'Utilizzando il form apposito di questo sito “prenotazione”, che trovate qui'),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'L’accesso in struttura, il giorno dell’appuntamento, avverrà:'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Row(
                children: [
                  Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Non prima di 15 minuti dell’orario d...'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LinkButton(link: 'News/Apertura poliambulatorio'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    CustomCard(
      title: 'FAI UNA DONAZIONE',
      child: SizedBox(
        height: 300 + 45,
        child: Column(
          children: [
            Center(
              child: Image.asset('lib/assets/struttura2.jpg',
                  width: 284, height: 284 / 1.5, fit: BoxFit.cover),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Il Nuovo Robbiani di Soresina  (Cremona) è in prima linea nella lotta al Coronavirus e si trova in una delle aree più critiche e più colpite d\'Italia.'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LinkButton(link: 'News/Raccolta fondi'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    CustomCard(
      title: 'PRESTAZIONI RADIOLOGICHE IN TEMPO ZERO AL NUOVO ROBBIANI',
      child: SizedBox(
        height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('lib/assets/esami.jpg',
                  width: 284, height: 284 / 1.505376 - 25, fit: BoxFit.cover),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Prestazioni in “TempoZero” al Nuovo Robbiani! Non serve prenotazione per i tuoi esami radiologici.'),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LinkButton(link: 'News/Prestazioni radiologiche'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    CustomCard(
      title:
          'CURA DELLE ERNIE LOMBARI: INFILTRAZIONI TC GUIDATE DI OSSIGENO-OZONO AL NUOVO ROBBIANI',
      child: SizedBox(
        height: 300 - 35,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset('lib/assets/ernie.jpg',
                  width: 284,
                  height: 284 / 1.561338289962825,
                  fit: BoxFit.cover),
            ),
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //       'Prestazioni in “TempoZero” al Nuovo Robbiani! Non serve prenotazione per i tuoi esami radiologici.'),
            // ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  LinkButton(link: 'News/Ernie lombari'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (MediaQuery.of(context).size.width >= 300 + 10 &&
                MediaQuery.of(context).size.width < 600 + 20) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[0]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[1]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[2]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[3]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[4]],
              ),
            ] else if (MediaQuery.of(context).size.width >= 600 + 20 &&
                MediaQuery.of(context).size.width < 900 + 30) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[0], list[1]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[2], list[3]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[4]],
              ),
            ] else if (MediaQuery.of(context).size.width >= 900 + 30) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[0], list[1], list[2]],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [list[3], list[4]],
              ),
            ],
            const Footer(),
          ],
        ),
      ),
    );
  }
}
