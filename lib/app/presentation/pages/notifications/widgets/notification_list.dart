import 'package:cms/app/core/const/notification_constants.dart';
import 'package:cms/app/data/model/notification.dart';
import 'package:cms/app/presentation/pages/notifications/widgets/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          Map<String, List<NotificationModel>> groupedNotifications = {};
          for (var notification in notificationsList) {
            if (!groupedNotifications.containsKey(notification.section)) {
              groupedNotifications[notification.section] = [];
            }
            groupedNotifications[notification.section]!.add(notification);
          }

          List<Widget> items = [];
          final sections = ['Today', 'Yesterday', 'Earlier This Week'];

          for (
            int sectionIndex = 0;
            sectionIndex < sections.length;
            sectionIndex++
          ) {
            final section = sections[sectionIndex];

            if (groupedNotifications.containsKey(section)) {
              items.add(
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    section,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              );

              for (var notification in groupedNotifications[section]!) {
                items.add(
                  NotificationCard(
                    type: notification.type,
                    title: notification.title,
                    subtitle: notification.subtitle,
                    description: notification.description,
                    timeAgo: notification.timeAgo,
                    imageColor: notification.imageColor,
                    hasWarning: notification.hasWarning,
                    leftBorderColor: notification.leftBorderColor,
                    hasContentContainer: notification.hasContentContainer,
                    hasDotindicator: notification.hasIndicatorDot,
                  ),
                );
              }

              if (sectionIndex < sections.length - 1 &&
                  groupedNotifications.containsKey(
                    sections[sectionIndex + 1],
                  )) {
                items.add(SizedBox(height: 24));
              }
            }
          }

          return items[index];
        },
        childCount: () {
          // Calculate total count (sections + notifications + gaps)
          Map<String, List<NotificationModel>> groupedNotifications = {};
          for (var notification in notificationsList) {
            if (!groupedNotifications.containsKey(notification.section)) {
              groupedNotifications[notification.section] = [];
            }
            groupedNotifications[notification.section]!.add(notification);
          }

          int totalItems = 0;
          final sections = ['Today', 'Yesterday', 'Earlier This Week'];
          int sectionsWithData = 0;

          for (String section in sections) {
            if (groupedNotifications.containsKey(section)) {
              totalItems += 1; // section header
              totalItems +=
                  groupedNotifications[section]!.length; // notifications
              sectionsWithData++;
            }
          }

          // Add gaps between sections (one less than sections with data)
          if (sectionsWithData > 1) {
            totalItems += sectionsWithData - 1;
          }

          return totalItems;
        }(),
      ),
    );
  }
}
