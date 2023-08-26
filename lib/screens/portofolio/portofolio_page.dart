import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/home/widgets/line_chart_card.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class PortofolioPage extends StatefulWidget {
  const PortofolioPage({super.key});

  @override
  State<PortofolioPage> createState() => _PortofolioPageState();
}

class _PortofolioPageState extends State<PortofolioPage> {

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: CustomCard(
                    child: SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pendanaan Berlangsung",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 30,),

                          Row(
                            children: [
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Jumlah"),
                                    SizedBox(height: 10,),
                                    Text("7"),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  width: 2,
                                  height: 40,
                                  color: Colors.cyan,
                                ),
                              ),
                              Flexible(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text("Total"),
                                    SizedBox(height: 10,),
                                    Text("Rp 58.000.000"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  flex: 3,
                  child: CustomCard(
                    child: SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                              "0",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 40,),
                          Text(
                              "Keterlambatan Pengembalian",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Jumlah Keuntungan dari pendanaan selama ini",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            SizedBox(
                              width: 200,
                              child: Text(
                                "Rp 2.757.778",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.cyan,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: SizedBox(
                      height: 125,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Rp. 233.000.000",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text(
                            "Total Nilai Pendanaan Selama ini",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: CustomCard(
                    child: SizedBox(
                      height: 125,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "Rp. 27.177.000",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text(
                            "Total Penarikan Dana Selama ini",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            LineChartCard(),
          ],
        ),
      ),
    );
  }
}
