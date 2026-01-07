import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/core/app_style.dart';
import 'package:islami_application/core/cach_helper.dart';
import 'package:islami_application/home_screen.dart';

class IntroductionScreens extends StatelessWidget {
  static const String routeName = "IntroductionScreen";

  IntroductionScreens({super.key});

  var listPagesViewModel = [
    PageViewModel(
      titleWidget: Text("Welcome To Islami App",style: AppStyle.titlestyle,) ,
      bodyWidget: Text(""),
      image: Image.asset("assets/images/intro1.png"),
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islami App",style: AppStyle.titlestyle,),
      bodyWidget: Text("We Are Very Excited To Have You In Our Community",style: AppStyle.bodyStyle,),
      image: Image.asset("assets/images/intro2.png"),
    ),
    PageViewModel(
      titleWidget: Text("Reading the Quran",style: AppStyle.titlestyle,),
      bodyWidget: Text("Read, and your Lord is the Most Generous", style: AppStyle.bodyStyle,),
      image: Image.asset("assets/images/intro3.png"),
    ),
    PageViewModel(
      titleWidget: Text("Bearish", style: AppStyle.titlestyle,),
      bodyWidget: Text("Praise the name of your Lord, the Most High",style: AppStyle.bodyStyle,),
      image: Image.asset("assets/images/intro4.png"),
    ),
    PageViewModel(
      titleWidget: Text("Holy Quran Radio", style: AppStyle.titlestyle,),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily", style: AppStyle.bodyStyle,
      ),
      image: Image.asset("assets/images/intro5.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen( globalBackgroundColor: Colors.black,
      pages: listPagesViewModel,
      bodyPadding: EdgeInsets.only(top: 228),
      globalHeader: Image.asset("assets/images/islami_top.png"),
      showNextButton: false,
      done: const Text("Done",style: AppStyle.titlestyle, ),
      dotsDecorator: DotsDecorator(
        color: AppColors.grey,
        activeColor: AppColors.primary,
          activeSize: Size(20, 10),
        activeShape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      showSkipButton: true,
      skip: Text("skip", style: AppStyle.titlestyle),
      showDoneButton: true,
      back: Icon(Icons.arrow_back, color: AppColors.primary ),
      showBackButton: true,
      onSkip: () {
      CachHelper.SaveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
      onDone: () {
        CachHelper.SaveBool(true);
        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }
}
