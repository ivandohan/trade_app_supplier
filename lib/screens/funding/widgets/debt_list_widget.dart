import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dummy_data/debt_card_data.dart';
import 'package:flutter_dashboard/screens/funding/widgets/debt_card_widget.dart';
import 'package:flutter_dashboard/screens/funding/widgets/funding_card_widget.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class DebtListWidget extends StatefulWidget {
  final Function setChoice;

  const DebtListWidget({
    super.key,
    required this.setChoice
});

  @override
  State<DebtListWidget> createState() => _DebtListWidgetState();
}

class _DebtListWidgetState extends State<DebtListWidget> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCard(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 0;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF171821),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: (_tabIndex == 0) ? Colors.white70 : Color(0xFF171821),
                      ),
                    ),
                    child: Center(child: Text("Permohonan (10)")),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 1;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF171821),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: (_tabIndex == 1) ? Colors.white70 : Color(0xFF171821),
                      ),
                    ),
                    child: Center(child: Text("Berlangsung (5)")),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _tabIndex = 2;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFF171821),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: (_tabIndex == 2) ? Colors.white70 : Color(0xFF171821),
                      ),
                    ),
                    child: Center(child: Text("Tertunggak (0)")),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20,),
        if(_tabIndex == 0)
          ...debtCardModel.map((item) {
            return FundingCardWidget(
              name: item.name,
              nominal: item.nominal,
              riskLevel: item.riskLevel,
              debtInterest: item.debtInterest,
              deadline: item.deadline,
              estimateTime: item.estimateTime,
            );
          }).toList(),

        if(_tabIndex == 1)
          ...peopleCardModel.map((item) {
            return DebtCardWidget(
              name: item.name,
              nominal: item.nominal,
              riskLevel: item.riskLevel,
              debtInterest: item.debtInterest,
              deadline: item.deadline,
              estimateTime: item.estimateTime,
              onClick: widget.setChoice,
            );
          }).toList(),

        if(_tabIndex == 2)
          Center(
            child: Text("Belum ada pinjaman yang tertunggak."),
          ),
      ],
    );
  }
}
