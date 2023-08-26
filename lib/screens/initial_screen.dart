import 'package:flutter/material.dart';
import 'package:flutter_dashboard/screens/auction/auction_page.dart';
import 'package:flutter_dashboard/screens/funding/funding_page.dart';
import 'package:flutter_dashboard/screens/home/home_page.dart';
import 'package:flutter_dashboard/screens/home/widgets/header_widget.dart';
import 'package:flutter_dashboard/screens/portofolio/portofolio_page.dart';
import 'package:flutter_dashboard/widgets/home_bottom_bar_widget.dart';
import 'package:flutter_dashboard/widgets/menu.dart';
import 'package:flutter_dashboard/widgets/profile/profile.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});


  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  List screenList = [
    HomePage(),
    FundingPage(),
    AuctionPage(),
    PortofolioPage(),
    Container(),
  ];

  int _currentIndex = 0;

  setCurrentIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Header(scaffoldKey: scaffoldKey,),
      ),
      drawer: SizedBox(
          width: 250,
          child: Menu(scaffoldKey: scaffoldKey),
      ),
      endDrawer: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Profile(),
      ),
      body: screenList[_currentIndex],
      bottomNavigationBar: HomeBottomBarWidget(
        currentIndex: _currentIndex,
        setCurrentIndex: setCurrentIndex,
      ),
    );
  }
}
