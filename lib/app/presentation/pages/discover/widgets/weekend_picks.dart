import 'package:cms/app/core/const/weekend_picks.dart';
import 'package:flutter/material.dart';

class WeekendPicks extends StatelessWidget {
  const WeekendPicks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.purple.withValues(alpha: 0.05),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue.withValues(alpha: .2),
                        ),
                        child: const Icon(
                          Icons.calendar_today,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                      SizedBox(width: 14),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'June 29-30, 2025',
                            maxLines: 1,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,

                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2D3748),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Saturday & Sunday',
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                              color: Color(0xFF718096),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 6,
                    bottom: 6,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.lightBlue.withValues(alpha: .2),
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    '14 events',
                    style: TextStyle(color: Colors.lightBlue, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          SizedBox(
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: picks.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: picks[index].categoryColor.withValues(
                              alpha: .1,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(
                            picks[index].category,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: picks[index].categoryColor,
                            ),
                          ),
                        ),

                        const SizedBox(height: 12),

                        Text(
                          picks[index].eventName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF2D3748),
                            height: 1.3,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          picks[index].time,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0xFF718096),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
