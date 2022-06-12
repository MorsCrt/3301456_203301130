import 'package:flutter/material.dart';

bool passValid(TextEditingController userpass) {
  /*
  r'^
  (?=.*[A-Z])       // should contain at least one upper case
  (?=.*[a-z])       // should contain at least one lower case
  (?=.*?[0-9])      // should contain at least one digit
  (?=.*?[!@#\$&*~]) // should contain at least one Special character
  .{8,}             // Must be at least 8 characters in length  
$
  */
  return RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      .hasMatch(userpass.text);
}

bool emailValid(TextEditingController useremail) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(useremail.text);
}

bool nullValid(TextEditingController userinput) {
  return userinput.text.isNotEmpty;
}
