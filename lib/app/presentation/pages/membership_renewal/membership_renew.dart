import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/membership_renewal/widgets/benefits.dart';
import 'package:cms/app/presentation/pages/membership_renewal/widgets/membership_renewal_info.dart';
import 'package:cms/app/presentation/pages/membership_renewal/widgets/pricing.dart';
import 'package:cms/app/presentation/shared/widgets/app_button.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class MembershipRenew extends StatelessWidget {
  const MembershipRenew({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      showLeading: true,
      showTrailing: false,
      titleText: "Membership Renewal",
      color: Colors.blue,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: MembershipRenewalInfo(),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Divider(thickness: 3, color: AppColors.kColorLight),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Benefits You'll Maintain",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Benefits(
                    benefiits: "Unlimited access to all premium content",
                  ),
                  SizedBox(height: 8),
                  Benefits(benefiits: "Priority customer support"),
                  SizedBox(height: 8),
                  Benefits(benefiits: "Exclusive member events and workshops"),
                  SizedBox(height: 8),
                  Benefits(benefiits: "Special discounts on partner services"),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Divider(thickness: 3, color: AppColors.kColorLight),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Pricing(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlueHomeButton(
                onPressed: () {
                  // // Handle tap
                  // Navigator.of(context).pushAndRemoveUntil(
                  //   MaterialPageRoute(builder: (context) => Home()),
                  //   (predicate) => true,
                  // );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}
