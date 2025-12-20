import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage( fit : BoxFit.fill,
          image: AssetImage("assets/images/sebha_bg.png"),
        ),
      ),

    );
  }
}