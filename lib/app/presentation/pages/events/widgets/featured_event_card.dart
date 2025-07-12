import 'package:cms/app/core/const/app_colors.dart';
import 'package:flutter/material.dart';

class FeaturedEventCard extends StatelessWidget {
  final String category;
  final String title;
  final String date;
  final String time;
  final String imageUrl;
  final Color categoryColor;

  const FeaturedEventCard({
    super.key,
    required this.category,
    required this.title,
    required this.date,
    required this.time,
    required this.imageUrl,
    this.categoryColor = Colors.green,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withValues(alpha: .7)],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Container(
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
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Colors.white, size: 16),
                      SizedBox(width: 4),
                      Text(
                        '$date • $time',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return Container(
                          margin: EdgeInsets.only(right: index < 2 ? 4 : 0),
                          decoration: BoxDecoration(
                            color: index == 1
                                ? AppColors.kWhite
                                : AppColors.kWhite.withValues(alpha: 0.4),
                            shape: BoxShape.circle,
                          ),
                          height: 10,
                          width: 10,
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
