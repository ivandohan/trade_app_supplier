import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/responsive.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class FundingCardWidget extends StatelessWidget {
  final String name;
  final String nominal;
  final String riskLevel;
  final String debtInterest;
  final String deadline;
  final String estimateTime;

  const FundingCardWidget({
    super.key, required this.name, required this.nominal, required this.riskLevel, required this.debtInterest, required this.deadline, required this.estimateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: CustomCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5,),
            AspectRatio(
              aspectRatio: Responsive.isMobile(context) ? 9 / 6 : 16 / 6,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rp ${nominal}",
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Tingkat Resiko"),
                              Text(riskLevel),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Tingkat Bunga"),
                              Text("${debtInterest} p.a."),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Jatuh Tempo"),
                              Text(deadline),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text("Jangka Waktu"),
                              Text(estimateTime),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(
                                "Lihat Rincian"
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
