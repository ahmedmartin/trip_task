import 'package:clean_architecture_posts_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget{
  final String imageUrl;


  const ImageWidget({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Stack(
              children: [
                Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
                ),
                Container(
            width: MediaQuery.of(context).size.width,
            height: 180,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,      // start at top
                end: Alignment.bottomCenter,     // end at bottom
                colors: [
    Colors.transparent,             // transparent top
    black54 ,                 // semi-transparent bottom
                ],
              ),
            ),
                ),
                
              ],
            );
  }
}