import 'package:flutter/material.dart';
import 'package:robbiani/appbar/appbar.dart';
import 'package:robbiani/standard_widgets/footer.dart';
import 'package:robbiani/utility/rows.dart';

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
                    'Grazie alle macchine e alle tecnologie che vengono utilizzate e alle professionalità umane che operano nel Centro Medico, Nuovo Robbiani offre servizi e prestazioni di grande qualità e all’avanguardia.'),
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
                    'Nuovo Robbiani offre Diagnostica e Radiologia, Specialisti e Ambulatori, Tecnologie e Degenze, ovvero servizi ospedalieri e ambulatoriali che coprono le più diverse esigenze di cura.'),
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
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                            'Nuovo Robbiani è accreditato presso il Servizio Sanitario Nazionale e abbiamo ulteriori standard qualitativi fissati dal nostro Sistema di Qualità.'),
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
                            'Puoi prenotare le tue visite attraverso il sito web, il servizio telefonico Cup oppure direttamente in struttura presso i punti di accettazione.'),
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
                            'A tutti i nostri fornitori chiediamo di rispettare quanto previsto dall’accreditamento presso il SSN e quanto previsto dal nostro Sistema di Accreditamento/Qualità.'),
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
                            'Il personale del Centro Medico viene selezionato tra i migliori professionisti e i medici ai massimi livelli, nazionali e non solo.'),
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
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...reorder(blue, MediaQuery.of(context).size.width),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
