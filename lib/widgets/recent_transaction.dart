import 'package:flutter/material.dart';
import '../helper/colors.dart';

class _TransactionItem extends StatelessWidget {
  const _TransactionItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const gradientRect = Rect.fromLTWH(0.0, 0.0, 200.0, 100.0);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Stack(
            children: const [
              Image(
                width: 42,
                height: 42,
                image: AssetImage('icons/category/income.png'),
              )
            ],
          ),
          const SizedBox(width: 10),
          Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Food & Drink',
                          style: TextStyle(
                              color: AppColors.softPurple,
                              fontSize: 12,
                              fontWeight: FontWeight.w700)),
                      Text('02.00 pm, 19 Jun 2021',
                          style: TextStyle(
                              color: AppColors.descPurple,
                              fontSize: 10,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              )),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('+\$34,222',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      foreground: Paint()
                        ..shader = AppColors.cardGradient2
                            .createShader(gradientRect))),
              Text('.99',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      foreground: Paint()
                        ..shader =
                            AppColors.cardGradient2.createShader(gradientRect)))
            ],
          )
        ],
      ),
    );
  }
}

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Recent transaction',
                style: TextStyle(
                    color: AppColors.darkPurple,
                    fontSize: 18,
                    fontWeight: FontWeight.w700)),
            TextButton(
              child: const Text('view all'),
              onPressed: () {},
            )
          ],
        ),
        const SizedBox(
          height: 17,
        ),
        const _TransactionItem(),
        const _TransactionItem(),
        const _TransactionItem(),
        const _TransactionItem(),
        const _TransactionItem()
      ],
    );
  }
}
