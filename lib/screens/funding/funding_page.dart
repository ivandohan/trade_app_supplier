import 'package:flutter/material.dart';
import 'package:flutter_dashboard/dummy_data/debt_card_data.dart';
import 'package:flutter_dashboard/screens/funding/funding_commit_page.dart';
import 'package:flutter_dashboard/screens/funding/widgets/debt_list_widget.dart';
import 'package:flutter_dashboard/widgets/custom_card.dart';

import 'widgets/debt_card_widget.dart';
import 'widgets/funding_card_widget.dart';

class FundingPage extends StatefulWidget {

  FundingPage({super.key});

  @override
  State<FundingPage> createState() => _FundingPageState();
}

class _FundingPageState extends State<FundingPage> {
  String choice = "";

  setChoice(value) {
    setState(() {
      choice = value;
    });
  }
  
  setPageView(choice) {
    if(choice == "") {
      return DebtListWidget(setChoice: setChoice,);
    }
    
    if(choice == "commit") {
      return FundingCommitPage(setChoice: setChoice,);
    }
  }

  @override
  Widget build(BuildContext context) {
    

    
    return SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: 15,),
          child: setPageView(choice),
        ));
  }
}
