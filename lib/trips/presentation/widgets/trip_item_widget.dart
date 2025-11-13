import 'package:clean_architecture_posts_app/core/theme/app_colors.dart';
import 'package:clean_architecture_posts_app/core/widgets/dynamic_text_widget.dart';
import 'package:clean_architecture_posts_app/trips/domain/entities/trips.dart';
import 'package:clean_architecture_posts_app/trips/presentation/widgets/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_stack/image_stack.dart';
import 'package:intl/intl.dart';

class TripItemWidget extends StatelessWidget {
  final Trips trip;

  const TripItemWidget({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: black80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.2,
            child: ImageWidget(imageUrl: trip.coverImage),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: trip.getStatusColor()),
                      color: trip.getStatusColor().withOpacity(.1)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                          child: DynamicTextWidget(
                        text: trip.status,
                        minFontSize: 8,
                      )),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: whiteColor,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  trip.title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w400),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/svg/calendar.svg'),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: DynamicTextWidget(
                        text:
                            '${trip.dates.endDate.difference(trip.dates.startDate).inDays} Nights (${DateFormat("MMM d").format(trip.dates.startDate)} - ${DateFormat("MMM d, yyyy").format(trip.dates.endDate)})',
                        minFontSize: 8,
                        style:
                            const TextStyle(color: grayColor, fontSize: 14),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  color: grayColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageStack(
                      imageList: [
                        for (var n = 0; n < trip.participants.length; n++)
                          trip.participants[n].avatarUrl,
                      ],
                      totalCount: trip.participants.length,
                      imageRadius: 25,
                      imageCount: 3,
                      imageBorderWidth: 1,
                      imageBorderColor: black54,
                      extraCountTextStyle: const TextStyle(
                          color: secondaryColor,
                          fontWeight: FontWeight.w100,
                          fontSize: 10),
                      backgroundColor: black54,
                    ),
                    Expanded(
                      child: DynamicTextWidget(
                        text: '${trip.unfinishedTasks} unfinished tasks',
                        minFontSize: 8,
                        style:
                            const TextStyle(color: grayColor, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
