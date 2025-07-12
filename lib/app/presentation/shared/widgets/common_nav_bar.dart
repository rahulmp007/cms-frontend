import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/data/model/nav_item.dart';
import 'package:cms/app/presentation/pages/discover/discover.dart';
import 'package:cms/app/presentation/pages/events/events.dart';
import 'package:cms/app/presentation/pages/home/home.dart';
import 'package:cms/app/presentation/pages/profile/profile.dart';
import 'package:flutter/material.dart';

class CommonNavBar extends StatefulWidget {
  const CommonNavBar({super.key});

  @override
  State<CommonNavBar> createState() => _CommonNavBarState();
}

class _CommonNavBarState extends State<CommonNavBar> {
  int selectedIndex = 0;

  final List<NavItem> navItems = [
    NavItem(icon: Icons.home_outlined, label: 'Home'),
    NavItem(icon: Icons.calendar_today_outlined, label: 'Events'),
    NavItem(icon: Icons.explore_outlined, label: 'Discover'),
    NavItem(icon: Icons.person_outline, label: 'Profile'),
  ];

  final List<Widget> pages = [Home(), Events(), Discover(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(16),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF4FC3F7), // Light blue
                Color(0xFF29B6F6), // Medium blue
                Color(0xFF1976D2), // Darker blue
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              navItems.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.white
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        navItems[index].icon,
                        color: selectedIndex == index
                            ? const Color(0xFF1976D2)
                            : Colors.white,
                        size: 24,
                      ),
                      if (selectedIndex == index) ...[
                        const SizedBox(width: 8),
                        Text(
                          navItems[index].label,
                          style: TextStyle(
                            color: selectedIndex == index
                                ? const Color(0xFF1976D2)
                                : Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
