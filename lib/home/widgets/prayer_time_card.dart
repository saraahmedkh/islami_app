import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/home/widgets/prayer_time_item.dart';

class PrayerTimeCard extends StatelessWidget {
  const PrayerTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 380,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 0,
            top: 40,
            child: Container(
              width: 60,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF856B3F),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 40,
            child: Container(
              width: 60,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xFF856B3F),
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(32),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "16 Jul, 2024",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Pray Time",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(32, 32, 32, 0.7),
                          ),
                        ),
                        Text(
                          "Tuesday",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "09 Muh, 1446",
                        textAlign: TextAlign.right,
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 29),
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final prayers = [
                        {"name": "Fajr", "time": "05:04"},
                        {"name": "Dhuhr", "time": "01:01"},
                        {"name": "Asr", "time": "04:38"},
                        {"name": "Maghrib", "time": "07:57"},
                        {"name": "Isha", "time": "09:15"},
                      ];
                      return PrayerTimeItem(
                        nameP: prayers[index]["name"]!,
                        time: prayers[index]["time"]!,
                      );
                    },
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Next Pray - 02:32",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    Icon(Icons.volume_off, color: Colors.black),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
