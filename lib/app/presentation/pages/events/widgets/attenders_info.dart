import 'package:flutter/material.dart';

class AttendersInfo extends StatelessWidget {
  final List<String> attendeeInitials;
  final int additionalCount;

  const AttendersInfo({
    super.key,
    required this.attendeeInitials,
    required this.additionalCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40 + (attendeeInitials.length - 1) * 20.0,
          height: 32,
          child: Stack(
            children: attendeeInitials.asMap().entries.map((entry) {
              int index = entry.key;
              String initials = entry.value;

              return Positioned(
                left: index * 20.0,
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Center(
                    child: Text(
                      initials,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        SizedBox(width: 8),
        Text(
          '+$additionalCount going',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
