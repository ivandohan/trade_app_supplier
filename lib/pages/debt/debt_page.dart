import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dummy_data/debt_card_data.dart';
import 'package:flutter_dashboard/pages/debt/widgets/debt_card_widget.dart';
import 'package:flutter_dashboard/pages/home/widgets/header_widget.dart';
import 'package:flutter_dashboard/responsive.dart';

class DebtPage extends StatelessWidget {

  DebtPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizedBox _height(BuildContext context) => SizedBox(
      height: Responsive.isDesktop(context) ? 30 : 20,
    );

    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Responsive.isMobile(context) ? 15 : 18),
              child: Column(
                children: [
                  SizedBox(
                    height: Responsive.isMobile(context) ? 5 : 18,
                  ),
                  _height(context),
                  ...debtCardModel.map((item) {
                    return DebtCardWidget(
                      name: item.name,
                      nominal: item.nominal,
                      riskLevel: item.riskLevel,
                      debtInterest: item.debtInterest,
                      deadline: item.deadline,
                      estimateTime: item.estimateTime,
                    );
                  }).toList(),
                ],
              ),
            )));
  }
}
