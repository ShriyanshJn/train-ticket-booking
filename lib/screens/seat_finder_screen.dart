import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import '../widgets/compartment.dart';

class SeatFinderScreen extends StatefulWidget {
  const SeatFinderScreen({Key? key}) : super(key: key);

  @override
  State<SeatFinderScreen> createState() => _SeatFinderScreenState();
}

class _SeatFinderScreenState extends State<SeatFinderScreen> {
  final _textController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final FocusScopeNode _focusScopeNode = FocusScopeNode();

  static const color = Color.fromARGB(255, 112, 189, 240);
  static const start = 200;
  static const delay = 40;

  final ScrollController _scrollController = ScrollController();
  int? selectedSeatNumber;

  OutlineInputBorder textFieldBorder = OutlineInputBorder(
    borderSide: const BorderSide(
      width: 5,
      color: color,
    ),
    borderRadius: BorderRadius.circular(10),
  );

  @override
  void dispose() {
    _textController.dispose();
    _focusScopeNode.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _focusScopeNode.unfocus();
      },
      child: Scaffold(
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
                        child: Form(
                          key: _formKey,
                          child: FocusScope(
                            node: _focusScopeNode,
                            child: TextFormField(
                              controller: _textController,
                              keyboardType: TextInputType.number,
                              validator: (value) {
                                if (value == null ||
                                    value.isEmpty ||
                                    int.tryParse(value) == null ||
                                    int.parse(value) > 80 ||
                                    int.parse(value) < 1) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title:
                                            const Text('Unable to find seat'),
                                        content: const Text(
                                            'Please enter a valid seat number'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('OK'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) {
                                if (_formKey.currentState!.validate()) {
                                  final seatNumber =
                                      int.tryParse(_textController.text.trim());
                                  if (seatNumber != null &&
                                      seatNumber >= 1 &&
                                      seatNumber <= 80) {
                                    setState(() {
                                      selectedSeatNumber = seatNumber;
                                    });
                                    FocusScope.of(context).unfocus();
                                    final double screenHeight =
                                        MediaQuery.of(context).size.height;
                                    final double seatHeight =
                                        screenHeight * 0.24;
                                    final double scrollOffset =
                                        (selectedSeatNumber! - 1) ~/
                                            8 *
                                            seatHeight;
                                    _scrollController.animateTo(
                                      scrollOffset,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                }
                              },
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
                                enabledBorder: textFieldBorder,
                                focusedBorder: textFieldBorder,
                                border: textFieldBorder,
                                errorBorder: textFieldBorder,
                                disabledBorder: textFieldBorder,
                                focusedErrorBorder: textFieldBorder,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: color,
                          ),
                          child: Theme(
                            data: ThemeData(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  final seatNumber =
                                      int.tryParse(_textController.text.trim());
                                  if (seatNumber != null &&
                                      seatNumber >= 1 &&
                                      seatNumber <= 80) {
                                    setState(() {
                                      selectedSeatNumber = seatNumber;
                                    });
                                    FocusScope.of(context).unfocus();
                                    final double screenHeight =
                                        MediaQuery.of(context).size.height;
                                    final double seatHeight =
                                        screenHeight * 0.24;
                                    final double scrollOffset =
                                        (selectedSeatNumber! - 1) ~/
                                            8 *
                                            seatHeight;
                                    _scrollController.animateTo(
                                      scrollOffset,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: color,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemBuilder: (context, index) {
                    final compartmentSeatStartNumber = (index * 8) + 1;
                    return FadeInUp(
                      delay: Duration(milliseconds: start + (delay * index)),
                      child: Compartment(
                        compartmentSeatStartNumber: compartmentSeatStartNumber,
                        selectedSeatNumber: selectedSeatNumber,
                      ),
                    );
                  },
                  itemCount: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
