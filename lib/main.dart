import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turismapp',
      localizationsDelegates: const[
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
      ],

      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.workSansTextTheme() ,
      ),
      home: const SplashPage(),
    );
  }
}