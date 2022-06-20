import 'package:flutter/material.dart';
import 'package:robbiani/main.dart';

typedef CallBack = void Function(String value);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String selected;
  final CallBack callback;
  const CustomAppBar({Key? key, required this.selected, required this.callback})
      : super(key: key);

  final List<String> names = const [
    'Home',
    'News',
    'Servizi',
    'Prenotazione',
    'Informazioni',
    'Tempi di attesa',
    'Contatti'
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Image.asset('lib/assets/logo.png'),
      actions: [
        for (String i in names) AppBarButton(text: i, callback: callback)
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// ignore: must_be_immutable
class AppBarButton extends StatelessWidget {
  late bool selected;
  final String text;
  final CallBack callback;
  AppBarButton({Key? key, required this.text, required this.callback})
      : super(key: key) {
    if (text == MyHomePage.selected) {
      selected = true;
    } else {
      selected = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: selected
          ? const Border(bottom: BorderSide(color: Colors.white, width: 3))
          : null,
      onPressed: () {
        callback(text);
      },
      child: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
