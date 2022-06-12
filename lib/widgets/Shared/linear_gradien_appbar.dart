import 'package:flutter/material.dart';

class LnrGradiendAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  final String appBarText;
  final List<Widget>? actionList;
  const LnrGradiendAppBar({Key? key, required this.appBarText, this.actionList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromARGB(171, 73, 73, 73)],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight),
        ),
      ),
      title: Text(
        appBarText,
        style: const TextStyle(
            color: Colors.white, fontSize: 30, fontFamily: "Rooster"),
      ),
      actions: actionList,
    );
  }
}
