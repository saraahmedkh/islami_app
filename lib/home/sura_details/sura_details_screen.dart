import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/core/app_style.dart';
import 'package:islami_application/home/model/sura_model.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = "SuraDetailsScreen";
  List<String>verses=[];

  SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    LoadSuraFile(model.suraIndex);
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Center(child: Text(model.nameEN, style: AppStyle.titlestyle)),
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/sura_bg.png")),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(model.nameAr, style: AppStyle.titlestyle),
              ),
              SizedBox(height: 50 ,),
              Expanded(
                child: ListView.builder( itemCount: verses.length,
                  itemBuilder: (context, index) => Center(child: Text(verses[index],style: AppStyle.bodyStyle,),),
                ),
              ),
              SizedBox(height: 100,)
            ],
          ),
        ],
      ),
    );
  }

Future<void>LoadSuraFile(int index)async{
    String SuraFile= await rootBundle.loadString("assets/files/$index.txt");
    List<String>SuraLine=[];
    verses=SuraLine;


}
}
