import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:robbiani/appbar/appbar.dart';
import 'standard_widgets/buttons.dart';
import 'standard_widgets/cards.dart';
import 'standard_widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<Widget> firstRow = [
      CustomCard(
        title: 'MISSION',
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              Center(child: Image.asset('lib/assets/mission.png')),
              const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                    'Offrire le prestazioni sanitarie più efficaci e all’avanguardia.'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Home/Mission'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'POLIAMBULATORIO MEDICINA DELLO SPORT',
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/medsport1.jpg',
                    width: 170, height: 120, fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Text(
                    'PRENOTA LA TUA VISITA DI MEDICINA DELLO SPORT ONLINE SUL SITO'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('https://medicinasportiva.nuovorobbiani.it'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                    'Con la possibilità di prenotare anche telefonicamente al 0374 415465'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                    'Oppure con un messaggio whatsApp al numero 3486110090 ...'),
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
        title: 'AMMINISTRAZIONE TRASPARENTE',
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('lib/assets/mission.png')),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Amministrazione Trasparente '),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Home/Amministrazione trasparente'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'FINI ISTITUZIONALI',
        child: SizedBox(
          height: 300,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                    'Offrire le prestazioni sanitarie più efficaci e all’avanguardia.'),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
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
                            'Fornire servizi ospedalieri di alta qualità.'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
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
                            'Garantire validi e celeri servizi ambulatoriali.'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
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
                        child:
                            Text('Gestire il recupero con diagnosi e terapia.'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
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
                            'Aumentare l\'efficacia dei servizi sulla salute e sulla prevenzione.'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'IL PERSONALE',
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/il-personale.png',
                    width: 170, height: 120, fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Text(
                    'Sette giorni tra la richiesta e la prestazione è il massimo tempo con cui, ragionevolmente, il Centro Medico Nuovo Robbiani vuole erogare servizi ai propri pazienti, così come un massimo di 4 giorni per la risposta agli esami di tipo radiologico.'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Home/Il personale'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'LA STRUTTURA',
        child: SizedBox(
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/la-struttura.png',
                    width: 170, height: 120, fit: BoxFit.fill),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    'Il Centro Medico Nuovo Robbiani accoglie i pazienti in una struttura di nuova costruzione e con un’organizzazione moderna in grado di coniugare l’innovazione delle tecnologie all’avanguardia usate nei reparti con l’esigenza umana di erog...'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Home/Struttura'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    double carouselHeight = MediaQuery.of(context).size.width / 3.8 <= 350
        ? MediaQuery.of(context).size.width / 3.8
        : 350;
    List<String> items = [
      'lib/assets/prenotazioni.jpg',
      'lib/assets/radiologia-1.jpg',
      'lib/assets/ambulatori.jpg'
    ];
    List<String> itemsTitle = [
      'PRENOTA ONLINE IL TUO ESAME',
      'SCOPRI I NOSTRI REPARTI DI RADIOLOGIA',
      'SCOPRI I NOSTRI SPECIALISTI AMBULATORIALI',
    ];
    final List<Widget> imageSliders = items
        .map(
          (item) => GestureDetector(
            onTap: () {
              // debugPrint('${items.indexOf(item)}');
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          itemsTitle[items.indexOf(item)],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
        .toList();
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: carouselHeight + 28,
              child: Column(
                children: [
                  SizedBox(
                    height: carouselHeight,
                    child: CarouselSlider(
                      items: imageSliders,
                      carouselController: _controller,
                      options: CarouselOptions(
                        autoPlayInterval: const Duration(seconds: 5),
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 3.6,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: items.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 12.0,
                          height: 12.0,
                          margin: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      _current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            LayoutGrid(
              autoPlacement: AutoPlacement.rowSparse,
              columnSizes: List<TrackSize>.generate(
                  (MediaQuery.of(context).size.width / 310).floor(),
                  (index) => auto),
              rowSizes:
                  List<TrackSize>.generate(firstRow.length, (index) => auto),
              children: [for (Widget i in firstRow) Center(child: i)],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
