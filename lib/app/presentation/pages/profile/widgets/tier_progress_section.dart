import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/data/model/user_profile.dart';
import 'package:cms/app/presentation/pages/profile/widgets/progress_bar.dart';
import 'package:flutter/material.dart';

class TierProgressSection extends StatelessWidget {
  final UserProfile user;

  const TierProgressSection({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Tier Progress',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1F2937),
              ),
            ),
            Text(
              '${user.currentPoints}/${user.totalPoints} points',
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF3B82F6),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ProgressBar(progress: user.progressPercentage),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              user.currentTier,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withValues(alpha: 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              user.nextTier,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.kBlack.withValues(alpha: 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
