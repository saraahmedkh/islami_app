import 'package:flutter/material.dart';
import 'package:islami_application/core/app_colors.dart';
import 'package:islami_application/home/model/sura_model.dart';

class RecentlyItem extends StatelessWidget {
  SuraModel model;
  RecentlyItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container( padding: EdgeInsets.symmetric(horizontal: 8,vertical: 16),
      width: 200, height: 200,
      decoration: BoxDecoration(color: AppColors.primary,borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  model.nameEN,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(model.nameAr,style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,)),
                SizedBox(height: 8),

                Text("${model.versesCount} verses ", style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,)),
              ],
            ),
          ),
          Expanded(child: Image.asset("assets/images/recent.png")),
        ],
      ),
    );
  }
}
