import 'package:cached_network_image/cached_network_image.dart';
import 'package:clean_architecture_posts_app/core/theme/app_colors.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/trip_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemPageTab extends StatelessWidget{
  const ItemPageTab({super.key, required this.trips});

  final List<Trips> trips;

  @override

  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:  15,right: 15,top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/svg/logo.svg'),
              Row(
                children: [
                  const Text('item'),
                  const SizedBox(width: 12,),
                  const Text('pricing'),
                  const SizedBox(width: 12,),
                  const Text('info'),
                  const SizedBox(width: 12,),
                  const Text('tasks'),
                  const SizedBox(width: 12,),
                  const Text('analytics'),
                  const SizedBox(width: 12,),
                  Container(
                width: .5,
                height: 15,
                color: grayColor,
              ),
                  const SizedBox(width: 12,),
                  const Icon(Icons.settings_outlined,color: whiteColor,),
                  const SizedBox(width: 12,),
                  const Icon(Icons.notifications_none,color: whiteColor,),
                  const SizedBox(width: 12,),
                  Container(
              
                width: .5,
                height: 15,
                color: grayColor,
              ),
                  const SizedBox(width: 12,),
                  Container(
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: CachedNetworkImage(imageUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&fm=jpg&q=60&w=3000'),
                  ),
                  const SizedBox(width: 12,),
                  const Text('Jhon Doe'),
                  const SizedBox(width: 12,),
                  const Icon(Icons.keyboard_arrow_down,color: whiteColor,)
                ],
              )
            ],
          ),
        ),
        const Divider(color: grayColor,thickness: .5,),

         Padding(
          padding: const EdgeInsets.symmetric(horizontal:  50,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               const Text('items',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26),),
               Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    // child: SvgPicture.asset('assets/svg/filter.svg'),
                  ),
          
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: secondaryColor,
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.add,color: primaryColor,),
                        SizedBox(width: 10,),
                        Text('add a new item',style: TextStyle(color: primaryColor),),
                        
                      ],
                    )
                  )
                ],
               )
            ],
          ),
        ),

        Expanded(
          child: Padding(
      padding: const EdgeInsets.only(left:  15,right: 15,top: 10),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
    maxCrossAxisExtent: 267, 
    crossAxisSpacing: 12,
    mainAxisSpacing: 12,
    childAspectRatio: .79,
  ),
        itemCount: trips.length,
        itemBuilder: (context, index) {
        return TripItemWidget(trip: trips[index]);
      },
      ),
    ),
        ),
      ],
    );
  }
}