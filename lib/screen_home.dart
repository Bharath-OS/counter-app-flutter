import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Counter App',
            textAlign: TextAlign.center,
            style: GoogleFonts.lexendMega(
              textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Text
              Text(
                textAlign: TextAlign.center,
                "Push button to increase or decrease the number.",
              ),

              //Output text
              Text(
                textAlign: TextAlign.center,
                _counter.toString(),
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              tooltip: "Increment",
              onPressed: _counter > 0
                  ? () {
                      setState(() {
                        --_counter;
                      });
                    }
                  : null,
              backgroundColor: _counter > 0 ? Colors.blue : Colors.blueGrey[300],
              child: const Icon(Icons.remove, color: Colors.white, size: 50),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              tooltip: "Decrement",
              onPressed: () {
                setState(() {
                  ++_counter;
                });
              },
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.add_rounded,
                color: Colors.white,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
