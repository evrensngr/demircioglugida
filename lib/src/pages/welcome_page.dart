import 'dart:ui';

import 'package:demfull/src/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/bg.jpg'),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'DEMİRCİOĞLU GIDA',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                child: Text(
                  'Adrese Teslimat',
                  style: GoogleFonts.robotoCondensed(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 45,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Theme.of(context).accentColor,
                  child: Text('Giriş Yap'),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 45,
                margin: const EdgeInsets.only(top: 20),
                child: SignInButton(
                  Buttons.Google,
                  text: "Google İle Giriş Yap",
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 45,
                margin: const EdgeInsets.only(top: 20),
                child: SignInButton(
                  Buttons.Apple,
                  text: "Apple İle Giriş Yap",
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                height: 45,
                margin: const EdgeInsets.only(top: 20),
                child: SignInButton(
                  Buttons.Twitter,
                  text: "Twitter İle Giriş Yap",
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
