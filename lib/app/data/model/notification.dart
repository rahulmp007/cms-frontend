import 'package:flutter/material.dart';

class NotificationModel {
  final String type;
  final String? title;
  final String? subtitle;
  final String? description;
  final String timeAgo;
  final Color? imageColor;
  final bool hasWarning;
  final Color indicatorColor;
  final Color leftBorderColor;
  final String section;
  final bool hasContentContainer;
  final bool hasIndicatorDot;

  NotificationModel({
    required this.type,
    this.title,
    this.subtitle,
    this.description,
    required this.timeAgo,
    this.imageColor,
    this.hasWarning = false,
    required this.indicatorColor,
    required this.leftBorderColor,
    required this.section,
    this.hasContentContainer = false,
    this.hasIndicatorDot = false,
  });
}
