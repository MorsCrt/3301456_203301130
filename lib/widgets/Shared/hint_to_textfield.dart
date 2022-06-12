import 'package:flutter/material.dart';

class HintToTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;

  const HintToTextField({Key? key, required this.hintText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          focusColor: Colors.white,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: Colors.white.withOpacity(0.3), width: 1),
          ),
        ),
      ),
    );
  }
}
