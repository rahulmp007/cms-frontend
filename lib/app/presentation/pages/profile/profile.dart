import 'package:cms/app/data/model/user_profile.dart';
import 'package:cms/app/presentation/pages/membership_renewal/membership_renew.dart';
import 'package:cms/app/presentation/pages/profile/widgets/exclusive_offers.dart';
import 'package:cms/app/presentation/pages/profile/widgets/profile_header.dart';
import 'package:cms/app/presentation/pages/profile/widgets/tier_progress_section.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      titleText: 'Profile',
      showLeading: true,
      showTrailing: true,
      color: Colors.green,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ProfileInfo()),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MembershipRenew()),
                ),
                child: ExclusiveOfferCard(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
      child: Container(
        height: 330,
        margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .1),
              blurRadius: 5,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                user: UserProfile(
                  name: 'Ahmed Al-Mansour',
                  membershipType: 'Gold Member',
                  memberId: '#A80542',
                  memberSince: 'Member since June 2023',
                  imageUrl:
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                  currentPoints: 750,
                  totalPoints: 1000,
                  currentTier: 'Gold',
                  nextTier: 'Platinum',
                ),
              ),
              const SizedBox(height: 32),
              TierProgressSection(
                user: UserProfile(
                  name: 'Ahmed Al-Mansour',
                  membershipType: 'Gold Member',
                  memberId: '#A80542',
                  memberSince: 'Member since June 2023',
                  imageUrl:
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
                  currentPoints: 750,
                  totalPoints: 1000,
                  currentTier: 'Gold',
                  nextTier: 'Platinum',
                ),
              ),
              const SizedBox(height: 24),

              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withValues(alpha: 0.6),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    "Upgrade Membership",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
