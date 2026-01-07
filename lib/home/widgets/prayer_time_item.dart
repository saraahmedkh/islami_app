import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrayerTimeItem extends StatelessWidget {
  String nameP;
  String time;

  PrayerTimeItem({required this.nameP,required this.time, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(32, 32, 32, 1),
            Color.fromRGBO(177, 151, 104, 1),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            nameP,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 21,),
          Text(
            time,
            style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 21,),
          Text("PM",
            style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
