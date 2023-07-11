import 'package:flutter/material.dart';
import 'seat.dart';

class Compartment extends StatelessWidget {
  const Compartment({Key? key, required this.compartmentSeatStartNumber})
      : super(key: key);
  final int compartmentSeatStartNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0.5,
        horizontal: 20,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.24,
        child: Column(
          children: [
            Row(
              children: [
                Seat(
                  seatNumber: compartmentSeatStartNumber,
                  seatType: 'LOWER',
                  isUp: true,
                ),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 1,
                  seatType: 'MIDDLE',
                  isUp: true,
                ),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 2,
                  seatType: 'UPPER',
                  isUp: true,
                ),
                const Spacer(),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 6,
                  seatType: 'SIDE LOWER',
                  isUp: true,
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Seat(
                  seatNumber: compartmentSeatStartNumber + 3,
                  seatType: 'LOWER',
                  isUp: false,
                ),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 4,
                  seatType: 'MIDDLE',
                  isUp: false,
                ),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 5,
                  seatType: 'UPPER',
                  isUp: false,
                ),
                const Spacer(),
                Seat(
                  seatNumber: compartmentSeatStartNumber + 7,
                  seatType: 'SIDE UPPER',
                  isUp: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
