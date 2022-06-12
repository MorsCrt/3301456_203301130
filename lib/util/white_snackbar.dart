import 'package:flutter/material.dart';

SnackBar whiteSnackBar(String snackText) {
  return SnackBar(
      duration: const Duration(seconds: 6),
      content: Text(
        snackText,
        style: const TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.white);
}
