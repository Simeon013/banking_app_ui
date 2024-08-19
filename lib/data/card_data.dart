import 'package:flutter/material.dart';
import 'package:banking_app_ui/constants/colors.dart';

class CardModel {
  String cardHolderName;
  String? cardNumber;
  String? expDate;
  String? cvv;
  Color? cardColor;

  CardModel({
    required this.cardHolderName,
    this.cardNumber,
    this.cvv,
    this.expDate,
    this.cardColor,
  });
}

List<CardModel> myCards = [
  CardModel(
    cardHolderName: "John Doe",
    cardNumber: "****  ****  ****  1234",
    cvv: "**4",
    expDate: "12/24",
    cardColor: kPrimaryColor,
  ),
  CardModel(
    cardHolderName: "John Doe",
    cardNumber: "****  ****  ****  4321",
    cvv: "**1",
    expDate: "01/25",
    cardColor: kSecondaryColor,
  ),
];
