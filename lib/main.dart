import 'package:flutter/material.dart';

import 'package:train_ticket_booking/screens/seat_finder_screen.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(236, 87, 216, 233),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Train Ticket Booking',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
      ),
      home: const SeatFinderScreen(),
    );
  }
}

