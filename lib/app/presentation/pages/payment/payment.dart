import 'package:cms/app/core/const/app_colors.dart';
import 'package:cms/app/presentation/pages/payment/widgets/bank_transfer.dart';
import 'package:cms/app/presentation/pages/payment/widgets/digital_wallets.dart';
import 'package:cms/app/presentation/pages/payment/widgets/order_summary.dart';
import 'package:cms/app/presentation/pages/payment/widgets/payment_feature.dart';
import 'package:cms/app/presentation/pages/payment/widgets/payment_method.dart';
import 'package:cms/app/presentation/shared/widgets/base_widget.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      color: Colors.blue,
      titleText: "Membership Renewal",
      showLeading: true,
      showTrailing: false,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text('Payment method'),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(child: PaymentMethod()),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(child: PaymentMethod()),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.kColorLight),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text('Add New Payment Method')),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DigitalWallets(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: EnableBankTansfer(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: OrderSummary(),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentFeature(
                    featureName: 'Secure Payment',
                    icon: Icon(Icons.lock),
                  ),
                  PaymentFeature(
                    featureName: 'PCI Compliant',
                    icon: Icon(Icons.check_box_rounded),
                  ),
                  PaymentFeature(
                    featureName: 'Encrypted',
                    icon: Icon(Icons.fingerprint_rounded),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
        ],
      ),
    );
  }
}
