import 'package:flutter/material.dart';

class QuickActionCard extends StatelessWidget {
  final QuickActionItem action;
  const QuickActionCard({super.key, required this.action});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon Container
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: action.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(action.icon, size: 32, color: action.iconColor),
            ),

            const SizedBox(height: 12),

            // Title
            Text(
              action.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),

            // Subtitle (optional)
            if (action.subtitle != null) ...[
              const SizedBox(height: 4),
              Text(
                action.subtitle!,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class QuickActionItems {
  static QuickActionItem renewMembership = QuickActionItem(
    title: 'Renew Membership',
    icon: Icons.refresh,
    iconColor: const Color(0xFF2196F3),
    backgroundColor: const Color(0xFF2196F3).withOpacity(0.1),
    onTap: () {
      // Handle renew membership
      print('Renew Membership tapped');
    },
  );

  static QuickActionItem viewBenefits = QuickActionItem(
    title: 'View Benefits',
    icon: Icons.workspace_premium,
    iconColor: const Color(0xFF4CAF50),
    backgroundColor: const Color(0xFF4CAF50).withOpacity(0.1),
    onTap: () {
      // Handle view benefits
      print('View Benefits tapped');
    },
  );

  static QuickActionItem donate = QuickActionItem(
    title: 'Donate',
    icon: Icons.volunteer_activism,
    iconColor: const Color(0xFF4CAF50),
    backgroundColor: const Color(0xFF4CAF50).withOpacity(0.1),
    onTap: () {
      // Handle donate
      print('Donate tapped');
    },
  );

  static QuickActionItem events = QuickActionItem(
    title: 'Events',
    icon: Icons.event,
    iconColor: const Color(0xFF9C27B0),
    backgroundColor: const Color(0xFF9C27B0).withOpacity(0.1),
    onTap: () {
      // Handle events
      print('Events tapped');
    },
  );

  // Additional predefined actions
  static QuickActionItem support = QuickActionItem(
    title: 'Support',
    subtitle: 'Get help',
    icon: Icons.support_agent,
    iconColor: const Color(0xFFFF9800),
    backgroundColor: const Color(0xFFFF9800).withOpacity(0.1),
    onTap: () {
      print('Support tapped');
    },
  );

  static QuickActionItem settings = QuickActionItem(
    title: 'Settings',
    subtitle: 'Preferences',
    icon: Icons.settings,
    iconColor: const Color(0xFF607D8B),
    backgroundColor: const Color(0xFF607D8B).withOpacity(0.1),
    onTap: () {
      print('Settings tapped');
    },
  );

  static QuickActionItem profile = QuickActionItem(
    title: 'Profile',
    subtitle: 'Edit details',
    icon: Icons.person,
    iconColor: const Color(0xFF3F51B5),
    backgroundColor: const Color(0xFF3F51B5).withOpacity(0.1),
    onTap: () {
      print('Profile tapped');
    },
  );

  static QuickActionItem notifications = QuickActionItem(
    title: 'Notifications',
    subtitle: 'Manage alerts',
    icon: Icons.notifications,
    iconColor: const Color(0xFFF44336),
    backgroundColor: const Color(0xFFF44336).withOpacity(0.1),
    onTap: () {
      print('Notifications tapped');
    },
  );
}

class QuickActionItem {
  final String title;
  final String? subtitle;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback? onTap;

  QuickActionItem({
    required this.title,
    this.subtitle,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    this.onTap,
  });
}

// Main Quick Actions Widget
class QuickActions extends StatelessWidget {
  final String? title;
  final List<QuickActionItem> actions;
  final EdgeInsetsGeometry? padding;
  final double spacing;
  final int crossAxisCount;

  const QuickActions({
    super.key,
    this.title,
    required this.actions,
    this.padding,
    this.spacing = 16,
    this.crossAxisCount = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          if (title != null) ...[
            Text(
              title!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: spacing,
              mainAxisSpacing: spacing,
              childAspectRatio: 1.3,
            ),
            itemCount: actions.length,
            itemBuilder: (context, index) {
              return QuickActionCard(action: actions[index]);
            },
          ),
        ],
      ),
    );
  }
}
