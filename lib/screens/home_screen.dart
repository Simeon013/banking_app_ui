import 'package:banking_app_ui/constants/app_textstyle.dart';
import 'package:banking_app_ui/data/card_data.dart';
import 'package:banking_app_ui/data/transaction_data.dart';
import 'package:banking_app_ui/widgets/my_card.dart';
import 'package:banking_app_ui/widgets/transaction_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Bank',
          style: const TextStyle(
            fontFamily: 'Poppins',
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/icons/logo.jpg'),
          )
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 240,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return MyCard(
                      card: myCards[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: myCards.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Recent Transactions',
                style: ApptextStyle.BODY_TEXT,
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                itemBuilder: (context, index) {
                  return TransactionCard(
                    transaction: myTransactions[index],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: myTransactions.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                //scrollDirection: Axis.horizontal,
              ),
            ]
          ),
        )
      )
    );
  }
}