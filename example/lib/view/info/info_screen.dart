import 'package:app_kit/app_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/ui/style/colors.dart';
import '../../core/ui/style/text_styles.dart';
import 'package:url_launcher/url_launcher_string.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: Text(
          'Info',
          style: large(color: whiteColor),
        ),
        leading: const Icon(
          Icons.arrow_back,
        ),
        onLeadingTap: () async {
          await context.router.pop();
        },
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Training project with app_kit's widget\n © 2023, Anton Iankin",
              style: largeRegular(color: Colors.black45),
              textAlign: TextAlign.center,
            ),
            AppGestureDetector(
              padding: const EdgeInsets.all(12),
              onTap: () async {
                await launchUrlString('t.me/kerjen');
              },
              child: const Icon(
                Icons.telegram,
                color: accentColor,
                size: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
