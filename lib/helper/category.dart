import 'package:flutter/material.dart';

enum TransactionCategory {
  achievement,
  bill,
  calendar,
  debt,
  education,
  fashion,
  foodndrink,
  gift,
  health,
  hobby,
  house,
  income,
  insurance,
  internet,
  investment,
  shipping,
  telephone,
  tools,
  transportation,
  travel,
  work
}

Map<TransactionCategory, AssetImage> _assetMap = {
  TransactionCategory.achievement:
      const AssetImage('icons/category/achievement.png'),
  TransactionCategory.bill: const AssetImage('icons/category/bill.png'),
  TransactionCategory.calendar: const AssetImage('icons/category/calendar.png'),
  TransactionCategory.debt: const AssetImage('icons/category/debt.png'),
  TransactionCategory.education:
      const AssetImage('icons/category/education.png'),
  TransactionCategory.fashion: const AssetImage('icons/category/fashion.png'),
  TransactionCategory.foodndrink: const AssetImage('icons/category/food.png'),
  TransactionCategory.gift: const AssetImage('icons/category/gift.png'),
  TransactionCategory.health: const AssetImage('icons/category/health.png'),
  TransactionCategory.hobby: const AssetImage('icons/category/hobby.png'),
  TransactionCategory.house: const AssetImage('icons/category/house.png'),
  TransactionCategory.income: const AssetImage('icons/category/income.png'),
  TransactionCategory.insurance:
      const AssetImage('icons/category/insurance.png'),
  TransactionCategory.internet: const AssetImage('icons/category/internet.png'),
  TransactionCategory.investment:
      const AssetImage('icons/category/investment.png'),
  TransactionCategory.shipping: const AssetImage('icons/category/shipping.png'),
  TransactionCategory.telephone:
      const AssetImage('icons/category/telephone.png'),
  TransactionCategory.tools: const AssetImage('icons/category/tools.png'),
  TransactionCategory.transportation:
      const AssetImage('icons/category/transportation.png'),
  TransactionCategory.travel: const AssetImage('icons/category/travel.png'),
  TransactionCategory.work: const AssetImage('icons/category/work.png'),
};

Map<TransactionCategory, String> _labelMap = {
  TransactionCategory.achievement: 'Achievement',
  TransactionCategory.bill: 'Bill',
  TransactionCategory.calendar: 'Calendar',
  TransactionCategory.debt: 'Debt',
  TransactionCategory.education: 'Education',
  TransactionCategory.fashion: 'Fashion',
  TransactionCategory.foodndrink: 'Food & Drink',
  TransactionCategory.gift: 'Gift',
  TransactionCategory.health: 'Health',
  TransactionCategory.hobby: 'Hobby',
  TransactionCategory.house: 'House',
  TransactionCategory.income: 'Income',
  TransactionCategory.insurance: 'Insurance',
  TransactionCategory.internet: 'Internet',
  TransactionCategory.investment: 'Investment',
  TransactionCategory.shipping: 'Shipping',
  TransactionCategory.telephone: 'Telephone',
  TransactionCategory.tools: 'Tools',
  TransactionCategory.transportation: 'Transportation',
  TransactionCategory.travel: 'Travel',
  TransactionCategory.work: 'Work',
};

AssetImage getTransactionAssetImage(TransactionCategory category) {
  return _assetMap.entries
      .where((element) => element.key == category)
      .first
      .value;
}

String getTransactionLabel(TransactionCategory category) {
  try {
    return _labelMap.entries
        .where((element) => element.key == category)
        .first
        .value;
  } catch (e) {
    return '';
  }
}
