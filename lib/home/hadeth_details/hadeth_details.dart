import 'package:flutter/material.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/core/app_style.dart';
import 'package:islami_application/home/model/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName="HadethDetails()";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        backgroundColor: AppColors.black,
        title: Center(child: Text(model.title, style: AppStyle.titlestyle)),
        iconTheme: IconThemeData(color: AppColors.primary),
      ),
      body: Stack(
        children: [
          Center(child: Image.asset("assets/images/sura_bg.png")),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Text(model.title, style: AppStyle.titlestyle),
              ),
              SizedBox(height: 50,),
              Expanded(
                child: ListView.builder(itemCount: model.hadethcontent.length,
                  itemBuilder: (context, index) =>
                      Center(child: Text(
                        model.hadethcontent[index], style: AppStyle.titlestyle, textAlign
                          :TextAlign.center,),
                      ),
                ),
              ),
              SizedBox(height: 100,),
            ],
          ),
        ],
      ),
    );


  }
}
