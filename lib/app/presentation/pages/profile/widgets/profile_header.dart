import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/data/model/user_profile.dart';
import 'package:cms/app/presentation/pages/profile/widgets/profile_avatar.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final UserProfile user;

  const ProfileHeader({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(
          imageUrl:
              "https://plus.unsplash.com/premium_photo-1678197937465-bdbc4ed95815?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww",
          onEditPressed: () {},
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1F2937),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  // Text(
                  //   user.membershipType,
                  //   style: const TextStyle(
                  //     fontSize: 16,
                  //     color: Color(0xFF3B82F6),
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 14,
                      right: 14,
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: ShapeDecoration(
                      color: Colors.lightBlue.withValues(alpha: 0.3),
                      shape: const StadiumBorder(),
                    ),
                    child: Text(
                      user.membershipType,
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'ID: ${user.memberId}',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.kBlack.withValues(alpha: 0.3),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                user.memberSince,
                style: const TextStyle(fontSize: 14, color: Color(0xFF6B7280)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
