import 'package:cotation_coin/theme/colors.dart';
import 'package:flutter/material.dart';

class QuotationNavigator extends StatefulWidget {
  final PageController pageController;
  final List<Widget> pages;

  const QuotationNavigator({
    Key? key,
    required this.pages,
    required this.pageController,
  }) : super(key: key);

  @override
  State<QuotationNavigator> createState() => _QuotationNavigatorState();
}

class _QuotationNavigatorState extends State<QuotationNavigator>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    widget.pageController.addListener(() {
      tabController.animateTo(widget.pageController.page!.toInt());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBg,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: widget.pageController,
            children: widget.pages,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TabPageSelector(
              controller: tabController,
              indicatorSize: 24.0,
              color: AppColors.circleBg,
              selectedColor: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
