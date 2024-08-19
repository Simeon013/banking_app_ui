import 'package:banking_app_ui/constants/app_textstyle.dart';
import 'package:banking_app_ui/data/card_data.dart';
import 'package:banking_app_ui/widgets/my_card.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Cards',
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return MyCard(
                  card: myCards[index],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 10,
                );
              },
              itemCount: myCards.length,
              shrinkWrap: true,
            )
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 40,
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.white, size: 50),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Add Card',
            style: ApptextStyle.LISTTILE_TITLE,
          )
        ],
      ),
    );
  }
}