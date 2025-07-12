import 'package:flutter/material.dart';

class QuickActionItemModel {
  final IconData icon;
  final String label;
  final Color backgroundColor;
  final Color iconColor;
  final VoidCallback? onTap;

  QuickActionItemModel({
    required this.icon,
    required this.label,
    required this.backgroundColor,
    required this.iconColor,
    this.onTap,
  });
}
