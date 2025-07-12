import 'package:cms/app/data/model/notification.dart';
import 'package:flutter/material.dart';

final List<NotificationModel> notificationsList = [
  NotificationModel(
    type: "Event Reminder",
    title: null,
    timeAgo: "2h ago",
    imageColor: Colors.brown[200],
    indicatorColor: Colors.green,
    leftBorderColor: Colors.green,
    section: "Today",
    hasIndicatorDot: true,
  ),
  NotificationModel(
    type: "Renewal Required",
    title: "Premium Membership Expiring",
    subtitle: "Your membership will expire in 3 days.",
    description: "Renew now to avoid service interruption.",
    timeAgo: "5h ago",
    hasWarning: true,
    indicatorColor: Colors.orange,
    leftBorderColor: Colors.red,
    section: "Today",
    hasIndicatorDot: true,
  ),
  NotificationModel(
    type: "Community Announcement",
    title: "Community Achievement Unlocked",
    subtitle: "Our community has reached 10,000",
    description: "members! Thanks to everyone who has participated.",
    timeAgo: "6h ago",
    indicatorColor: Colors.blue,
    leftBorderColor: Colors.blue,
    section: "Today",
    hasIndicatorDot: true,
  ),

  NotificationModel(
    type: "Event Update",
    title: null,
    timeAgo: "1d ago",
    imageColor: Colors.brown[200],
    indicatorColor: Colors.green,
    leftBorderColor: Colors.green,
    section: "Yesterday",
  ),
  NotificationModel(
    type: "Payment Reminder",
    title: "Quarterly Subscription Payment",
    subtitle:
        "Your next billing subscription payment of \$49.99 is due in 3 days.",
    timeAgo: "1d ago",
    indicatorColor: Colors.yellow[700]!,
    leftBorderColor: Colors.yellow[700]!,
    section: "Yesterday",
  ),
  NotificationModel(
    type: "Policy Update",
    title: "Privacy Policy Update",
    subtitle:
        "We've updated our privacy policy to comply with new regulations. The changes will take effect on Jul 15, 2024.",
    timeAgo: "1d ago",
    indicatorColor: Colors.grey,
    leftBorderColor: Colors.grey,
    section: "Yesterday",
  ),

  NotificationModel(
    type: "Emergency Alert",
    title: "System Maintenance Notice",
    subtitle:
        "Emergency maintenance will be performed on our servers tonight from 11:00 PM to 3:00 AM EST.",
    timeAgo: "2d ago",
    indicatorColor: Colors.red,
    leftBorderColor: Colors.pink,
    section: "Earlier This Week",
    hasContentContainer: true,
  ),
  NotificationModel(
    type: "Event Invitation",
    title: null,
    timeAgo: "2d ago",
    imageColor: Colors.brown[300],
    indicatorColor: Colors.purple,
    leftBorderColor: Colors.orange,
    section: "Earlier This Week",
  ),
  NotificationModel(
    type: "Subscription Update",
    title: "Renewal Successful",
    subtitle:
        "Your monthly subscription has been successfully renewed. The next billing date is Jul 15, 2024.",
    timeAgo: "2d ago",
    indicatorColor: Colors.green,
    leftBorderColor: Colors.green,
    section: "Earlier This Week",
  ),
];
