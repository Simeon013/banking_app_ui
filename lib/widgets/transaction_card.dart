import 'package:banking_app_ui/constants/app_textstyle.dart';
import 'package:banking_app_ui/data/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey[300]!,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: transaction.color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  transaction.avatar,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.name,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Text(
                    transaction.month,
                    style: ApptextStyle.LISTTILE_SUB_TITLE,
                  )
                ]
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    transaction.currentBalance,
                    style: ApptextStyle.LISTTILE_TITLE,
                  ),
                  Row(
                    children: [
                      transaction.changePercentageIndicator == 'up'
                          ? Icon(
                              FontAwesomeIcons.arrowTrendUp,
                              size: 10,
                              color: Colors.green,
                            )
                          : Icon(
                              FontAwesomeIcons.arrowTrendDown,
                              size: 10,
                              color: Colors.red,
                            ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        transaction.changePercentage,
                        style: ApptextStyle.LISTTILE_SUB_TITLE,
                      )
                    ]
                  )
                ],
              )
            ]
          )
        ]
      ),
    );
  }
}
