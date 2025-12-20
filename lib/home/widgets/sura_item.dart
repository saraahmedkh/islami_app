import 'package:flutter/material.dart';
import 'package:islami_application/home/model/sura_model.dart';

class SuraItem extends StatelessWidget {
   SuraModel model;

   SuraItem({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      // stack
      leading: Stack( alignment: Alignment.center,
             children: [
               Image.asset(
                 "assets/images/sura_number.png",
                 width: 52,
                 height: 52,
               ),
       Text("${model.suraIndex}",style: TextStyle(
                  color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,)),
             ],
           ),
      title: Text(
                 model.nameAr,
                 style: const TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                 ),
               ),
      subtitle: Text(
        "${model.versesCount}",
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing:  Text(
        model.nameEN,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );




//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(
//         children: [
//           Stack( alignment: Alignment.center,
//             children: [
//               Image.asset(
//                 "assets/images/sura_number.png",
//                 width: 52,
//                 height: 52,
//               ),
//       Text("1",style: TextStyle(
//                  color: Colors.white,
//                    fontWeight: FontWeight.bold,
//                    fontSize: 20,)),
//             ],
//           ),
//           const SizedBox(width: 24),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 name,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const Text(
//                 "100 verses",
//                 style: TextStyle(color: Colors.white70, fontSize: 14),
//               ),
//             ],
//           ),
//           Spacer(),
//           Text(
//             name,
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 20,
//             ),
//           ),
//         ],
//       ),
//     );
   }
 }

