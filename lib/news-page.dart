import 'package:flutter/material.dart';
import 'package:robbiani/standard_widgets/cards.dart';
import 'standard_widgets/footer.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<Widget> list = [
    const CustomCard(
        title: 'APERTURA POLIAMBULATORIO MEDICINA DELLO SPORT',
        child: SizedBox()),
    const CustomCard(title: 'RIAPERTURA ATTIVITÀ', child: SizedBox()),
    const CustomCard(title: 'FAI UNA DONAZIONE', child: SizedBox()),
    const CustomCard(
        title: 'PRESTAZIONI RADIOLOGICHE IN TEMPO ZERO AL NUOVO ROBBIANI',
        child: SizedBox()),
    const CustomCard(
        title:
            'CURA DELLE ERNIE LOMBARI: INFILTRAZIONI TC GUIDATE DI OSSIGENO-OZONO AL NUOVO ROBBIANI',
        child: SizedBox()),
  ];
  @override
  Widget build(BuildContext context) {
    debugPrint('${MediaQuery.of(context).size.width}');
    return SingleChildScrollView(
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
              children: [list[4]],
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
    );
  }
}
