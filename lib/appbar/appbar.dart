import 'package:flutter/material.dart';
import 'package:robbiani/main.dart';

typedef CallBack = void Function(String value);

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String selected = MyApp.selected;
  CustomAppBar({Key? key}) : super(key: key);

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
      actions: [for (String i in names) AppBarButton(text: i)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

// ignore: must_be_immutable
class AppBarButton extends StatelessWidget {
  late bool selected;
  final String text;
  AppBarButton({Key? key, required this.text}) : super(key: key) {
    if (text == MyApp.selected) {
      selected = true;
    } else {
      selected = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: selected
            ? const Border(
                bottom: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              )
            : null,
      ),
      child: TextButton(
        onPressed: () {
          MyApp.selected = text;
          Navigator.of(context).pushNamed(text);
        },
        child: Text(
          text.split('/').last,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
