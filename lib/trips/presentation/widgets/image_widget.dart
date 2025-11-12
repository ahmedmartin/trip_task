import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_posts_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

// class ImageWidget extends StatelessWidget {
//   final String imageUrl;

//   const ImageWidget({super.key, required this.imageUrl});
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       fit: StackFit.expand, 
//       children: [
//         CachedNetworkImage(
//           imageUrl: imageUrl,
//           width: MediaQuery.of(context).size.width,
//           height: 180,
//           fit: BoxFit.cover,
//           errorWidget: (context, url, error) {
//             return Container(
//               color: Colors.grey[900],
//               child: const Icon(
//                 Icons.error_outline,
//                 color: Colors.redAccent,
//                 size: 40,
//               ),
//             );
//           },
//         ),
//         Container(
//           width: MediaQuery.of(context).size.width,
//           height: 180,
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               colors: [
//                 Colors.transparent,
//                 black80,
//               ],
//             ),
//           ),
//         ),

//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 color: black54,
//               ),
//               child: Icon(
//                 Icons.more_horiz_rounded,
//                 color: whiteColor,
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

class ImageWidget extends StatelessWidget {
  final String imageUrl;

  const ImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand, // ✅ makes children fill available space
      children: [
        // 🖼 Cached image
        CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) => Container(
            color: Colors.grey[900],
            child: const Icon(
              Icons.error_outline,
              color: Colors.redAccent,
              size: 40,
            ),
          ),
        ),
    
        // 🌈 Gradient overlay
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                black80, 
              ],
            ),
          ),
        ),
    
        // ⋯ More icon
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black54,
            ),
            child: const Icon(
              Icons.more_horiz_rounded,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

