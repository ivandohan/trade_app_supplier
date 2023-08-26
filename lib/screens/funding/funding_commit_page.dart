import 'package:flutter/material.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

class FundingCommitPage extends StatelessWidget {
  final Function setChoice;
  const FundingCommitPage({super.key, required this.setChoice});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setChoice("");
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.cyan.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.cyan,
                    width: 1,
                  ),
                ),
                child: const Text(
                  "<  Kembali ke daftar"
                ),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              children: [
                Expanded(
                  child: CustomCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Pendanaan",
                          style: TextStyle(fontSize: 17, color: Colors.cyan),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Anda akan memberikan dana kepada : "),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Nama",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text("Pemohon 1",
                                  style: TextStyle(
                                    color: Colors.teal,
                                  ),),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Tingkat Bunga",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text("20% p.a.",style: TextStyle(
                                    color: Colors.yellow,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Tipe Pinjaman",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text("Invoice Financing",
                                    style: TextStyle(
                                      color: Colors.orange,
                                    ),),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    "Jangka Waktu",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text("163 hari",
                                    style: TextStyle(
                                    color: Colors.green,
                                  ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Disclaimer Resiko",
                              style: TextStyle(fontSize: 17, color: Colors.pink),
                            ),
                            Text(
                              "Harap dibaca sebelum melakukan pendanaan."
                            )
                          ],
                        ),
                        Icon(Icons.arrow_drop_down_circle_outlined),
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
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Nominal Pendanaan"),
                            Text("Rp 476.000.000"),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Proyeksi Keuntungan"),
                            Text("+ Rp 2.033.333",
                            style: TextStyle(
                              color: Colors.yellow,
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
            const SizedBox(height: 30,),
            Divider(
              thickness: 2,
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {
                        setChoice("");
                      },
                      child: Center(child: Text("Batal Danai"),),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Center(child: Text("Danai Sekarang"),),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
