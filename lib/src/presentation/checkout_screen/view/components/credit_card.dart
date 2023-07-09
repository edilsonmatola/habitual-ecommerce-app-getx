import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:habitual/src/core/constants/app_colors.dart';
import 'package:habitual/src/core/constants/app_sizes.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          Sizes.p10,
        ),
      ),
      child: CreditCardWidget(
        showBackView: false,
        isHolderNameVisible: true,
        obscureCardCvv: false,
        cardType: CardType.mastercard,
        chipColor: AppColors.neutral100,
        cardBgColor: AppColors.neutral900,
        labelCardHolder: 'Leslie Floress',
        cardHolderName: 'Leslie Flores',
        cardNumber: '123456789101112',
        expiryDate: '02/24',
        labelValidThru: '02/27',
        cvvCode: '555',
        bankName: 'Bank of America',
        onCreditCardWidgetChange: (p0) {},
      ),
    );
  }
}
