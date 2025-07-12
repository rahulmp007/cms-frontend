import 'package:flutter/material.dart';

class EventInfoModel {
  final String title;
  final String category;
  final String date;
  final String time;
  final String location;
  final String distance;
  final String attendeeInfo;
  final String imageUrl;
  final Color categoryColor;
  final bool isRSVPEnabled;
  final bool isFull;
  final String section; // Today's Events, Upcoming Events

  EventInfoModel({
    required this.title,
    required this.category,
    required this.date,
    required this.time,
    required this.location,
    required this.distance,
    required this.attendeeInfo,
    required this.imageUrl,
    required this.categoryColor,
    this.isRSVPEnabled = true,
    required this.section,
    this.isFull = false,
  });
}
