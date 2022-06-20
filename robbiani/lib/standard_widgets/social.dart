import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../icons/social_icons_icons.dart';

class Facebook extends StatelessWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () async {
          if (await canLaunchUrlString(
              'https://www.facebook.com/centromediconuovorobbiani')) {
            await launchUrlString(
                'https://www.facebook.com/centromediconuovorobbiani');
          } else {
            throw 'Could not launch';
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xff1877f2)),
        ),
        child: const Icon(SocialIcons.facebook, color: Colors.white),
      ),
    );
  }
}

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () async {
          if (await canLaunchUrlString('https://twitter.com/NuovoRobbiani')) {
            await launchUrlString('https://twitter.com/NuovoRobbiani');
          } else {
            throw 'Could not launch';
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xff52cbff)),
        ),
        child: const Icon(SocialIcons.twitter, color: Colors.white),
      ),
    );
  }
}

class Linkedin extends StatelessWidget {
  const Linkedin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () async {
          if (await canLaunchUrlString(
              'https://www.linkedin.com/company/nuovo-robbiani')) {
            await launchUrlString(
                'https://www.linkedin.com/company/nuovo-robbiani');
          } else {
            throw 'Could not launch';
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xff006daa)),
        ),
        child: const Icon(SocialIcons.linkedin_in, color: Colors.white),
      ),
    );
  }
}

class GooglePlus extends StatelessWidget {
  const GooglePlus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: TextButton(
        onPressed: () async {
          if (await canLaunchUrlString(
              'https://plus.google.com/112464183746935180310')) {
            await launchUrlString(
                'https://plus.google.com/112464183746935180310');
          } else {
            throw 'Could not launch';
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(const Size(60, 60)),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xffd54936)),
        ),
        child: const Icon(SocialIcons.gplus, color: Colors.white),
      ),
    );
  }
}
