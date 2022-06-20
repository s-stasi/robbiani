import 'package:flutter/material.dart';
import 'social.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double half = MediaQuery.of(context).size.width / 2;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        color: const Color(0xFF2795BB),
        // height: 450,
        child: Row(
          children: [
            SizedBox(
              width: half,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PER PRENOTARE',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '0374 415901',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.alternate_email,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'cup@nuovorobbiani.it',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'I NOSTRI CONTATTI',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Polo Sanitario Nuovo Robbiani',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Telefono: 0374 415411',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Sede Operativa: Via Inzani, 4 - 26015',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Soresina (CR)',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Sede Legale e Amministrativa: CSA',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Cooperativa Servizi Assistenziali Soc.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Coop: Sociale Via Gelso, 8 - 46100',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Mantova (MN)',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'C.F. / P.I. 01697440202',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Da Lun a Ven: 8:00 - 19:00',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            'Sab: 8:30 - 12:30',
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: const [
                          Facebook(),
                          Twitter(),
                          GooglePlus(),
                          Linkedin()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: const [],
            ),
          ],
        ),
      ),
    );
  }
}
