import 'package:flutter/material.dart';
import 'seat.dart';

class Compartment extends StatelessWidget {
  const Compartment(
      {Key? key,
      required this.compartmentSeatStartNumber,
      required this.selectedSeatNumber})
      : super(key: key);
  final int compartmentSeatStartNumber;
  final int? selectedSeatNumber;
  static const restColor = Color.fromARGB(255, 112, 189, 240);
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
                  Stack(
                    children: [
                      Row(
                        children: [
                          Seat(
                            seatNumber: compartmentSeatStartNumber,
                            seatType: 'LOWER',
                            isUp: true,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber,
                          ),
                          Seat(
                            seatNumber: compartmentSeatStartNumber + 1,
                            seatType: 'MIDDLE',
                            isUp: true,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber + 1,
                          ),
                          Seat(
                            seatNumber: compartmentSeatStartNumber + 2,
                            seatType: 'UPPER',
                            isUp: true,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber + 2,
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.248,
                          height: MediaQuery.of(context).size.width * 0.02,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      Seat(
                        seatNumber: compartmentSeatStartNumber + 6,
                        seatType: 'SIDE LOWER',
                        isUp: true,
                        isSelected: selectedSeatNumber ==
                            compartmentSeatStartNumber + 6,
                      ),
                      Positioned(
                        top: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.02,
                          width: MediaQuery.of(context).size.height * 0.083,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Stack(
                    children: [
                      Row(
                        children: [
                          Seat(
                            seatNumber: compartmentSeatStartNumber + 3,
                            seatType: 'LOWER',
                            isUp: false,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber + 3,
                          ),
                          Seat(
                            seatNumber: compartmentSeatStartNumber + 4,
                            seatType: 'MIDDLE',
                            isUp: false,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber + 4,
                          ),
                          Seat(
                            seatNumber: compartmentSeatStartNumber + 5,
                            seatType: 'UPPER',
                            isUp: false,
                            isSelected: selectedSeatNumber ==
                                compartmentSeatStartNumber + 5,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.248,
                          height: MediaQuery.of(context).size.width * 0.02,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      Seat(
                        seatNumber: compartmentSeatStartNumber + 7,
                        seatType: 'SIDE UPPER',
                        isUp: false,
                        isSelected: selectedSeatNumber ==
                            compartmentSeatStartNumber + 7,
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.02,
                          width: MediaQuery.of(context).size.height * 0.083,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.height * 0.0105,
                          height: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: restColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
