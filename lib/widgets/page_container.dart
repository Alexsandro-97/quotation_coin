import 'package:cotation_coin/theme/colors.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final List<Widget> actions;

  const PageContainer({Key? key, this.actions = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32.0,
        vertical: 15.0,
      ),
      child: Column(
        children: [
          const Text(
            'Moeda Base',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'Selecione uma moeda base para as conversões',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.text1,
              fontSize: 18.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(children: actions),
        ],
      ),
    );
  }
}
