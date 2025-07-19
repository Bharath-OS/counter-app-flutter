import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screen_home.dart';

main() => runApp(counterApp());

class counterApp extends StatelessWidget {
  const counterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.lexendMegaTextTheme(),
        primarySwatch: Colors.amber,
      ),
      home: HomeScreen(),
    );
  }
}
