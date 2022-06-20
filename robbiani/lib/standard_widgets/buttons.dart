import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  final String link;
  const LinkButton({Key? key, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Theme.of(context).primaryColor),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text('Leggi tutto',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
