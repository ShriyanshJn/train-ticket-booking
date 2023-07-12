import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import '../widgets/compartment.dart';
import '../widgets/textfield_button.dart';

class SeatFinderScreen extends StatefulWidget {
  const SeatFinderScreen({Key? key}) : super(key: key);

  @override
  State<SeatFinderScreen> createState() => _SeatFinderScreenState();
}

class _SeatFinderScreenState extends State<SeatFinderScreen> {
  final _textController = TextEditingController();
  static const color = Color.fromARGB(255, 112, 189, 240);
  static const start = 200;
  static const delay = 40;

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                bottom: 9,
                left: 20,
                right: 2,
              ),
              child: BounceInDown(
                child: Text(
                  'Seat Finder',
                  style: GoogleFonts.varelaRound(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      wordSpacing: 2,
                      letterSpacing: 0.8,
                      color: color,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: BounceInRight(
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    SizedBox(
                      height: 55,
                      child: TextField(
                        controller: _textController,
                        keyboardType: TextInputType.number,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          color: color,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter Seat Number...',
                          hintStyle: GoogleFonts.varelaRound(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: color,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 5,
                              color: color,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 5,
                              color: color,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 0,
                      child: TextFieldButton(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  // 0+1  8+1  16+1
                  return FadeInUp(
                    delay: Duration(milliseconds: start + (delay * index)),
                    child: Compartment(
                        compartmentSeatStartNumber: (index * 8) + 1),
                  );
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
