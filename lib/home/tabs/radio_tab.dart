import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/home/widgets/radio_item.dart';

class RadioTab extends StatefulWidget {
  static const String routeName = "RadioTab";

  RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  int? playingIndex;

  final List<String> radioNames = [
    "Radio Ibrahim Al-Akdar",
    "Radio Al-Qaria Yassen",
    "Radio Ahmed Al-trabulsi",
    "Radio Addokali Mohammad Alalim",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/radio_bg.png"),
        ),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
              border: BoxBorder.all(width: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                SizedBox(height: 180),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Radio",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text(
                          "Reciters",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
    separatorBuilder: (context, index) => SizedBox(height: 12),
    itemCount: radioNames.length,
              itemBuilder: (context, index) {
                return RadioItem(
                  name: radioNames[index],
                  isPlaying: playingIndex == index, onPlayPause: () {
                  setState(() {
                    if (playingIndex == index) {
                      playingIndex = null;
                    } else {
                      playingIndex = index;
                    }
                  });
                },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}




