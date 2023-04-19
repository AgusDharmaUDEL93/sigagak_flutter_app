import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldFilled extends StatelessWidget {
  const TextFieldFilled({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        labelText: label,
        labelStyle: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.normal,
          color: const Color(0xFF5e5e5e),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        fillColor: const Color(0xFFEAEAEAEA),
        filled: true,
      ),
    );
  }
}
