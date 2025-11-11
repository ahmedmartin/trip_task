
import 'package:clean_architecture_posts_app/core/theme/app_colors.dart';
import 'package:clean_architecture_posts_app/core/theme/app_theme.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TripItemWidget extends StatelessWidget{

  final Trips trip;

  const TripItemWidget({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      margin: EdgeInsets.all(20),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: black54,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(imageUrl: trip.coverImage),
          Padding(
            padding: const EdgeInsets.only(left:  20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: secondaryColor)
                ),
                child: Text(trip.status),
                 ),
            
                SizedBox(height: 16,),
            
                Text(trip.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(Icons.calendar_month_outlined,color: grayColor,),
                    SizedBox(width: 10,),
                    Text('${trip.dates.endDate.difference(trip.dates.startDate).inDays} Nights (${DateFormat("MMM d").format(trip.dates.startDate)} - ${DateFormat("MMM d, yyyy").format(trip.dates.endDate)})',style: TextStyle(color: grayColor),),
                  ],
                ),
                SizedBox(height: 5,),

                Divider(color: grayColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

