import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldButton extends StatelessWidget {
  const TextFieldButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Theme.of(context).colorScheme.inversePrimary,
      ),
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            elevation: 0,
            splashFactory: NoSplash.splashFactory,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Find',
              style: GoogleFonts.varelaRound(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
