import 'package:cotation_coin/navigator/navigator.dart';
import 'package:cotation_coin/widgets/page_container.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const QuotationApp(),
    ),
  );
}

class QuotationApp extends StatefulWidget {
  const QuotationApp({Key? key}) : super(key: key);

  @override
  State<QuotationApp> createState() => _QuotationAppState();
}

class _QuotationAppState extends State<QuotationApp> {
  final pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotationNavigator(
        pageController: pageController,
        pages: [
          PageContainer(
            actions: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Próximo'),
              )
            ],
          ),
          const PageContainer(),
          const PageContainer(),
        ],
      ),
    );
  }
}
