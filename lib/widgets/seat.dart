import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  const Seat({
    super.key,
    required this.seatNumber,
    required this.seatType,
    required this.isUp,
    required this.isSelected,
  });
  final int seatNumber;
  final String seatType;
  final bool isUp;
  final bool isSelected;
  static const restColor = Color.fromARGB(255, 88, 222, 255);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.08,
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: isSelected
            ? Colors.blue
            : Theme.of(context).colorScheme.primaryContainer.withOpacity(0.6),
      ),
      child: isUp
          ? Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    seatNumber.toString(),
                    style: TextStyle(
                      color: isSelected
                          ? Colors.white
                          : Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w500,
                      fontSize: MediaQuery.of(context).size.height * 0.022,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.01),
                    child: Text(
                      seatType,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: isSelected
                            ? Colors.white
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.01),
                    child: Text(
                      seatType,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                        color: isSelected
                            ? Colors.white
                            : Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                Text(
                  seatNumber.toString(),
                  style: TextStyle(
                    color: isSelected
                        ? Colors.white
                        : Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: MediaQuery.of(context).size.height * 0.022,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.023,
                ),
              ],
            ),
    );
  }
}
