import 'package:flutter/material.dart';
import 'package:islami_application/core/app_colors.dart';

class RadioItem extends StatelessWidget {
  final String name;
  final bool isPlaying;
  final VoidCallback onPlayPause;

  const RadioItem({
    super.key,
    required this.name,
    required this.isPlaying,
    required this.onPlayPause,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
       duration: const Duration(milliseconds: 300),
      height: 120,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        image: isPlaying
            ? DecorationImage(image: AssetImage("assets/images/sound_wave.png",))
            : DecorationImage(
                image: AssetImage("assets/images/mosque_wave.png"),
              ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text( textAlign: TextAlign.center,
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isPlaying ? AppColors.primary : Colors.black,
            ),
          ),
          const Spacer(),

          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: onPlayPause,
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      size: 32,
                      color: isPlaying ? AppColors.primary : Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.volume_up,
                    size: 28,
                    color: isPlaying ? AppColors.primary : Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class RadioItem extends StatelessWidget {
//   final String name;
//   bool isPlaying;
//   VoidCallback onPause;
//
//   RadioItem({
//     super.key,
//     required this.name,
//     required this.isPlaying,
//     required this.onPause,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Container(
//         height: 140,
//         padding: EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: AppColors.primary,
//           borderRadius: BorderRadius.circular(24),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               textAlign: TextAlign.center,
//               name,
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//             Stack(
//               children: [
//                 isPlaying
//                     ? Image.asset("assets/images/mosque_wave.png")
//                     :  Image.asset("assets/images/sound_wave.png"),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       onPressed: onPause,
//                       icon: Icon(
//                         isPlaying ? Icons.play_arrow : Icons.pause,
//                         size: 32,
//                         color: Colors.black,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.volume_up, size: 28),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
