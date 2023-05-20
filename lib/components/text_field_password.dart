import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({
    super.key,
    required this.obscureText,
    required this.toggle,
    required this.iconStatus,
    required this.label,
    required this.validation,
  });

  final bool obscureText;
  final Function toggle;
  final Widget iconStatus;
  final String label;
  final String? Function(String value) validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter some text';
        }
        String message = validation(value) ?? "";

        if (message.isEmpty) {
          return null;
        }
        return message;
      },
      obscureText: obscureText,
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
        suffixIcon: IconButton(
          onPressed: () {
            toggle();
          },
          icon: iconStatus,
        ),
      ),
    );
  }
}
