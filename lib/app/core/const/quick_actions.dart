import 'package:cms/app/data/model/quick_action_item.dart';
import 'package:flutter/material.dart';

List<QuickActionItemModel> quickActions = [
  QuickActionItemModel(
    icon: Icons.person_outline,
    label: 'Edit Profile',
    backgroundColor: const Color(0xFFE3F2FD),
    iconColor: const Color(0xFF2196F3),
    onTap: () => print('Edit Profile tapped'),
  ),
  QuickActionItemModel(
    icon: Icons.group_outlined,
    label: 'Family',
    backgroundColor: const Color(0xFFE8F5E8),
    iconColor: const Color(0xFF4CAF50),
    onTap: () => print('Family tapped'),
  ),
  QuickActionItemModel(
    icon: Icons.description_outlined,
    label: 'Documents',
    backgroundColor: const Color(0xFFF3E5F5),
    iconColor: const Color(0xFF9C27B0),
    onTap: () => print('Documents tapped'),
  ),
  QuickActionItemModel(
    icon: Icons.share_outlined,
    label: 'Refer',
    backgroundColor: const Color(0xFFFFF3E0),
    iconColor: const Color(0xFFFF9800),
    onTap: () => print('Refer tapped'),
  ),
  QuickActionItemModel(
    icon: Icons.headset_mic_outlined,
    label: 'Support',
    backgroundColor: const Color(0xFFFFEBEE),
    iconColor: const Color(0xFFF44336),
    onTap: () => print('Support tapped'),
  ),
];
