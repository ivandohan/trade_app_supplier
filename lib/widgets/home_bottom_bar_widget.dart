import 'package:flutter/material.dart';

class HomeBottomBarWidget extends StatelessWidget {

  final void Function(int) setCurrentIndex;
  final int currentIndex;

  const HomeBottomBarWidget({
    super.key,
    required this.currentIndex,
    required this.setCurrentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Color(0xFF171821),
      selectedItemColor: Color(0xFFD5FFD0),
      unselectedItemColor: Colors.white,
      onTap: (index) {
        setCurrentIndex(index);
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Beranda',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          label: 'Pendanaan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.balance_rounded),
          label: 'Lelang',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radar_sharp),
          label: 'Portofolio',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work_history_rounded),
          label: 'Riwayat',
        ),
      ],
    );
  }
}
