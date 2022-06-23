import 'package:flutter/material.dart';
import 'package:robbiani/appbar/appbar.dart';
import 'package:robbiani/standard_widgets/footer.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

import 'standard_widgets/buttons.dart';
import 'standard_widgets/cards.dart';

class ServiziPage extends StatefulWidget {
  const ServiziPage({Key? key}) : super(key: key);

  @override
  State<ServiziPage> createState() => _ServiziPageState();
}

class _ServiziPageState extends State<ServiziPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> blue = [
      CustomCard(
        background: const Color(0xFF2795BB),
        title: 'I NOSTRI MIGLIORI SERVIZI',
        child: SizedBox(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('lib/assets/img.services.3.jpg')),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Grazie alle macchine e alle tecnologie che vengono utilizzate e alle professionalità umane che operano nel Centro Medico, Nuovo Robbiani offre servizi e prestazioni di grande qualità e all’avanguardia.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        background: const Color(0xFF2795BB),
        title: 'SERVIZI OFFERTI',
        child: SizedBox(
          height: 350,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('lib/assets/img.services.4.jpg')),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Nuovo Robbiani offre Diagnostica e Radiologia, Specialisti e Ambulatori, Tecnologie e Degenze, ovvero servizi ospedalieri e ambulatoriali che coprono le più diverse esigenze di cura.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        background: const Color(0xFF2795BB),
        title: 'LO SAPEVI?',
        child: SizedBox(
          height: 350,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                child: Row(
                  children: [
                    Container(
                      height: 10.0,
                      width: 10.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Nuovo Robbiani è accreditato presso il Servizio Sanitario Nazionale e abbiamo ulteriori standard qualitativi fissati dal nostro Sistema di Qualità.',
                          style: TextStyle(color: Colors.white),
                        ),
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
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Puoi prenotare le tue visite attraverso il sito web, il servizio telefonico Cup oppure direttamente in struttura presso i punti di accettazione.',
                          style: TextStyle(color: Colors.white),
                        ),
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
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'A tutti i nostri fornitori chiediamo di rispettare quanto previsto dall’accreditamento presso il SSN e quanto previsto dal nostro Sistema di Accreditamento/Qualità.',
                          style: TextStyle(color: Colors.white),
                        ),
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
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Il personale del Centro Medico viene selezionato tra i migliori professionisti e i medici ai massimi livelli, nazionali e non solo.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    List<Widget> body = [
      CustomCard(
        title: 'RADIOLOGIA',
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/radiologia.jpg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Servizi/Diagnostica e radiologia'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'SPECIALISTI AMBULATORI',
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/ambulatori1.jpg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Servizi/Specialisti e ambulatori'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'TECNOLOGIE',
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/tecnologia.jpg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Servizi/Tecnologia'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'Degenze',
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/degenze.jpg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Servizi/Degenze'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      CustomCard(
        title: 'RADIOLOGIA',
        child: SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('lib/assets/radiologia.jpg'),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    LinkButton(link: 'Servizi/Diagnostica e radiologia'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LayoutGrid(
              autoPlacement: AutoPlacement.rowSparse,
              columnSizes: List<TrackSize>.generate(
                  (MediaQuery.of(context).size.width / 310).floor(),
                  (index) => auto),
              rowSizes: const [auto, auto, auto, auto],
              children: [for (Widget i in blue) Center(child: i)],
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
