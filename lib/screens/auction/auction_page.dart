import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class AuctionPage extends StatefulWidget {
  const AuctionPage({super.key});

  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,),
          child: Column(
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
                          child: Center(child: Text("Seluruh Produk")),
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
                          child: Center(child: Text("Produk Anda (0)")),
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
                          child: Center(child: Text("Tambah Produk")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              if(_tabIndex == 0)
                Center(
                  child: Text("Belum ada produk untuk ditampilkan."),
                ),

              if(_tabIndex == 1)
                Center(
                  child: Text("Belum ada produk untuk ditampilkan."),
                ),

              if(_tabIndex == 2)
                Center(
                  child: Text("Sedang Dikerjakan."),
                ),
            ],
          ),
        ),
    );
  }
}
