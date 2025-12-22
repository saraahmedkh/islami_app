import 'package:flutter/material.dart';
import 'package:islami_application/core/cach_helper.dart';
import 'package:islami_application/home_screen.dart';
import 'package:islami_application/introduction_screen.dart';

import 'home/sura_details/sura_details_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CachHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CachHelper.getBool("Introduction")== true ?
          HomeScreen.routeName : IntroductionScreens.routeName,
        routes: {
        IntroductionScreens.routeName :(context)=> IntroductionScreens(),
        HomeScreen.routeName :(context)=> HomeScreen(),
        SuraDetailsScreen.routeName :(context)=> SuraDetailsScreen(),

      }

    );
    }
}

