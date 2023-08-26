import 'package:flutter/material.dart';
import 'package:flutter_dashboard/constants/responsive.dart';
import 'package:flutter_dashboard/screens/home/widgets/activity_details_card.dart';
import 'package:flutter_dashboard/screens/home/widgets/bar_graph_card.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              const ActivityDetailsCard(),
              _height(context),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(flex: 1,child: Icon(Icons.precision_manufacturing)),
                              SizedBox(width: 20,),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Penarikan Dana",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 17,
                                      ),
                                    ),
                                    Text("Transfer pendapatan lelang dan pendanaan ke rekening pribadi.")
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              _height(context),
              Row(
                children: [
                  Expanded(
                    child: CustomCard(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(flex: 1,child: Icon(Icons.production_quantity_limits)),
                              SizedBox(width: 20,),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("7 produk",
                                      style: TextStyle(
                                        color: Colors.cyan,
                                      ),
                                    ),
                                    Text("Produk Lelang Anda")
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                  child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              Expanded(flex: 1,child: Icon(Icons.monetization_on)),
                              SizedBox(width: 20,),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Rp 235.000.000",
                                      style: TextStyle(
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Text("Proyeksi Keuntungan Lelang")
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),

                          const SizedBox(height: 5,),

                          Divider(
                            thickness: 2,
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            children: [
                              Expanded(flex: 1,child: Icon(Icons.wb_iridescent_outlined)),
                              SizedBox(width: 20,),
                              Expanded(
                                flex: 7,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3 produk",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                    Text("Lelang yang Dimenangkan")
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
              _height(context),
              BarGraphCard(),
            ],
          ),
        )));
  }
}
