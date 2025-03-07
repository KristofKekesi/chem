import 'package:elements_rework/widgets/promo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'localization.dart';

// ignore: non_constant_identifier_names
String Capitalizate(input) {
  return input[0].toUpperCase() + input.substring(1);
}

// ignore: camel_case_types
class customDrawer extends StatelessWidget {
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * .2,
                child: DrawerHeader(
                  child: null,
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('lib/backgrounds/cover.jpg'),
                          fit: BoxFit.fill)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .03),
                child: GestureDetector(
                  onTap: () {
                    _launchURL(
                        'https://github.com/KristofKekesi/Elements/blob/master/README.md#contributors-');
                  },
                  child: ListTile(
                    title: Text(
                      AppLocalizations.of(context).translate('contributors'),
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width * .07),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(
                      'https://github.com/KristofKekesi/Elements/blob/master/README.md#contacts-');
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('contacts'),
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .07),
                  ),
                ),
              ),
              Divider(
                thickness: MediaQuery.of(context).size.height * .005,
              ),
              PromoWidget(),
              Divider(
                thickness: MediaQuery.of(context).size.height * .005,
              ),
              GestureDetector(
                onTap: () {
                  _launchURL(
                      'https://github.com/KristofKekesi/Elements/blob/master/README.md#license-');
                },
                child: ListTile(
                  title: Text(
                    AppLocalizations.of(context).translate('license'),
                    style: TextStyle(
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * .07),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    autoAboutDialog(context);
                  },
                  child: ListTile(
                      title: Text(
                          AppLocalizations.of(context).translate('credits'),
                          style: TextStyle(
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * .07)))),
              Divider(
                thickness: MediaQuery.of(context).size.height * .005,
              ),
              ListTile(
                title: Text(
                  Capitalizate(AppLocalizations.of(context).translate('name')) +
                      ' [' +
                      AppLocalizations.of(context).translate('key') +
                      ']',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width * .05),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void autoAboutDialog(context) {
  showAboutDialog(
    context: context,
    applicationVersion: '1.1',
    applicationName: 'Elements',
    applicationLegalese: 'Kristóf Kékesi',
    children: [
      Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .05),
        child: Text(
          AppLocalizations.of(context).translate('warning'),
        ),
      ),
    ],
  );
}
