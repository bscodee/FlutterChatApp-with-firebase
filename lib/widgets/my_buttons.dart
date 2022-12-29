import 'package:flutter/material.dart';

class mybutton extends StatelessWidget {
  mybutton({required this.color, required this.title, required this.onpressed});

  final Color color;
  final String title;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        color: color,
        child: MaterialButton(
          onPressed: onpressed,
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
