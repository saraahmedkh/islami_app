import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/home/widgets/Azkar_card.dart';
import 'package:islami_application/home/widgets/prayer_time_card.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/time_bg.png"),fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            SizedBox(height: 150,),
            PrayerTimeCard(),
            SizedBox(height: 20),
            Align(alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.left,
                "Azkar",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AzkarCard(
                    title: 'Evening Azkar',
                    image: 'assets/images/evening.png',
                  ),
                  SizedBox(width: 12),
                  AzkarCard(
                    title: 'Morning Azkar',
                    image: 'assets/images/morning.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
