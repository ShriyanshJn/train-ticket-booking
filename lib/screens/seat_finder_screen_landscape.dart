import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import '../widgets/compartment.dart';
class SeatFinderScreenLandscape extends StatefulWidget {
  const SeatFinderScreenLandscape({super.key});

  @override
  State<SeatFinderScreenLandscape> createState() => _SeatFinderScreenLandscapeState();
}

class _SeatFinderScreenLandscapeState extends State<SeatFinderScreenLandscape> {
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
    return const Placeholder();
  }
}