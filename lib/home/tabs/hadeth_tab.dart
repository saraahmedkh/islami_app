import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/home/model/hadeth_model.dart';

import '../hadeth_details/hadeth_details.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> HadethData = [];

  @override
  void initState() {
    super.initState();
    loadhadetfile();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/hadeth_bg.png"),
            ),
          ),
          child: CarouselSlider(
            options: CarouselOptions(height: double.infinity),
            items: HadethData.map((model) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.only(top: 150),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset("assets/images/hadith_card.png"),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Text( textAlign: TextAlign.center,
                                model.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: model.hadethcontent.length,
                                  itemBuilder: (context, index) {
                                    return InkWell( onTap: (){
                                      Navigator.pushNamed(context, HadethDetails.routeName,arguments: model);
                                    },
                                      child: Padding(
                                        padding: const EdgeInsets.all(18),
                                        child: Text(
                                          model.hadethcontent[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 8,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  loadhadetfile() async {
    // create ahadeth file
    String hadethfile = await rootBundle.loadString(
      "assets/files/ahadeeth.txt",
    );
    // create list of all ahadeth met2asema
    List<String> allahadeth = hadethfile.split("#");
    for (int i = 0; i < allahadeth.length; i++) {
      String hadethone = allahadeth[i];
      List<String> hadethline = hadethone.trim().split("\n");
      String title = hadethline[0];
      hadethline.removeAt(0);
      List<String> hadethcontent = hadethline;
      HadethData.add(HadethModel(title, hadethcontent));
    }

    setState(() {});
  }
}
