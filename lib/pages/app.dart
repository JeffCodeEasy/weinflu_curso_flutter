import 'package:flutter/material.dart';
import 'package:weinflu_app/design/colors.dart';
import 'package:weinflu_app/design/radius.dart';
import 'package:weinflu_app/widgets/custom_money_display.dart';
import 'package:weinflu_app/widgets/home_app_bar_title.dart';
import 'package:weinflu_app/widgets/summary_card.dart';

class WeinFluApp extends StatelessWidget {
  const WeinFluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: WeinFluRadius.small, 
              bottomRight: WeinFluRadius.small
              )
              ),
          toolbarHeight: 97,
          backgroundColor: WeinFluColors.brandLightColor,
          title:  const Padding(
            padding: EdgeInsets.fromLTRB(16, 45, 16, 12),
            child: HomeAppBarTItle()
          ),
        ),
        body:  const Column(
          children: [
            TopHomePageBody()
          ],
        )
    );
  }
}

class TopHomePageBody extends StatelessWidget {
  const TopHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      transform: Matrix4.translationValues(0, -12, 0),
      decoration: const BoxDecoration(
        color: WeinFluColors.brandPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: WeinFluRadius.small,
          bottomRight: WeinFluRadius.small
        )
      ),
      height: 389,
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 56),
            child: Text('Your Budget', style: Theme.of(context).textTheme.displaySmall),
          ),
          CustomMoneyDisplay(
            amount: 2868000.12,
            padding: const EdgeInsets.only(top: 8, right: 4),
            amountStyle: Theme.of(context).textTheme.displayLarge!,
            amountStyleSmall: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: WeinFluColors.brandLightColor),
          ),
          SummaryCard(
            typeSummaryCard: TypeSummaryCard.incomes,
            amount: 700000,
            period: 'From January 1 to January 31',
            action: ()=> print('incomes'),
          ),
          SummaryCard(
            typeSummaryCard: TypeSummaryCard.spending,
            amount: 90000,
            period: 'From January 1 to January 31',
            action: () => print('spending'),
          ),
        ],
      ),
    );
  }
}