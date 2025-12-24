import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = [
    "سبحان الله ",
    "الحمد لله",
    "الله اكبر",
    "لا اله الا الله",
  ];

  int counter = 0;
  int zekrindex = 0;

  Future<void> saveSebha() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt("counter", counter);
    await prefs.setInt("zekrIndex", zekrindex);
  }

  void onSebhaTap() {
    setState(() {
      counter++;
      if (counter == 33) {
        counter = 0;
        zekrindex = (zekrindex + 1) % azkar.length;
      }
    });
    saveSebha();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/sebha_bg.png"),
        ),
      ),

      child: SafeArea(
        child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 200,),
            Text( textAlign: TextAlign.center,
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى ",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            Spacer(),
            GestureDetector(
              onTap: onSebhaTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height: MediaQuery.of(context).size.width * 0.78,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/sebhabody.png",),
                        fit: BoxFit.cover,
                      ),
                    )),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        azkar[zekrindex],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        counter.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
