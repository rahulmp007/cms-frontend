import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String type;
  final String? title;
  final String? subtitle;
  final String? description;
  final String timeAgo;
  final Color? imageColor;
  final bool hasWarning;
  final Color leftBorderColor;
  final bool hasContentContainer;
  final bool hasDotindicator;

  const NotificationCard({
    super.key,
    required this.type,
    this.title,
    this.subtitle,
    this.description,
    required this.timeAgo,
    this.imageColor,
    this.hasWarning = false,
    required this.leftBorderColor,
    this.hasContentContainer = false,
    this.hasDotindicator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border(left: BorderSide(color: leftBorderColor, width: 4)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (hasDotindicator) ...[
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 8),
              ],
              SizedBox(width: 8),
              Text(
                type,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              Spacer(),
              Text(
                timeAgo,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
          SizedBox(height: 12),
          if (imageColor != null) ...[
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                color: imageColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1751013781844-fa6a78089e49?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ] else if (title != null) ...[
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: hasContentContainer
                    ? Colors.green.withValues(alpha: 0.08)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: hasWarning ? Colors.red[50] : Colors.blue[50],
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      hasWarning ? Icons.warning : Icons.notifications,
                      color: hasWarning ? Colors.red : Colors.blue,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title ?? "",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: hasWarning ? Colors.red : Colors.black87,
                          ),
                        ),
                        if (subtitle != null) ...[
                          SizedBox(height: 4),
                          Text(
                            subtitle ?? "",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[700],
                            ),
                          ),
                        ],
                        if (description != null) ...[
                          SizedBox(height: 2),
                          Text(
                            description ?? "",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
