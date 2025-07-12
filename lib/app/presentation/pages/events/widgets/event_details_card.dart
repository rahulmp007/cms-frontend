import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/events/widgets/attenders_info.dart';
import 'package:flutter/material.dart';

class EventDetailCard extends StatelessWidget {
  final String category;
  final String title;
  final String time;
  final String location;
  final String attendeeText;
  final String imageUrl;
  final Color categoryColor;
  final VoidCallback? onClick;
  final bool isFull;

  const EventDetailCard({
    super.key,
    required this.category,
    required this.title,
    required this.time,
    required this.location,
    required this.attendeeText,
    required this.imageUrl,
    this.categoryColor = Colors.blue,
    this.onClick,
    this.isFull = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: categoryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    category,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 12),

                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.grey[600], size: 18),
                    SizedBox(width: 8),
                    Text(
                      time,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 8),

                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey[600], size: 18),
                    SizedBox(width: 8),
                    Text(
                      location,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AttendersInfo(
                      attendeeInitials: ['JE', 'KL', 'MN'],
                      additionalCount: 18,
                    ),
                    if (isFull)
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Full',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[600],
                          ),
                        ),
                      )
                    else
                      GestureDetector(
                        onTap: onClick,
                        child: Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: Text(
                              'RSVP',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.kWhite,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
