import 'package:flutter/material.dart';

class SectionOptions extends StatelessWidget {
  const SectionOptions({Key? key, required this.title, required this.onTap})
      : super(key: key);

  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      focusColor: Colors.blue,
      child: Text(
        title,
        style: const TextStyle(
            color: Colors.blueGrey,
            fontSize: 16.5,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
