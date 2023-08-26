import 'package:flutter/material.dart';
import 'package:flutter_dashboard/Responsive.dart';
import 'package:flutter_dashboard/model/health_model.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';
import 'package:flutter_svg/svg.dart';

class ActivityDetailsCard extends StatelessWidget {
  const ActivityDetailsCard({super.key});

  final List<HealthModel> healthDetails = const [
    HealthModel(
        icon: 'assets/svg/burn.svg', value: "5", title: "Pendanaan Berlangsung", routeName: "/funding-info"),
    HealthModel(icon: 'assets/svg/steps.svg', value: "100", title: "Permohonan Pendanaan", routeName: "/debt-info"),
    HealthModel(icon: 'assets/svg/sleep.svg', value: "89", title: "Penunggak", routeName: ""),
    HealthModel(
        icon: 'assets/svg/distance.svg', value: "Rp 3.000.000", title: "Cash in Hand", routeName: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: healthDetails.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: !Responsive.isMobile(context) ? 15 : 12,
          mainAxisSpacing: 12.0,
      ),
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, healthDetails[i].routeName);
          },
          child: CustomCard(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(healthDetails[i].icon),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 4),
                  child: Text(
                    healthDetails[i].value,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  healthDetails[i].title,
                  style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
