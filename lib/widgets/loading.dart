import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Loading extends StatelessWidget {
  final String title;
  final String subTitle;

  const Loading({super.key, required this.title, this.subTitle = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 250),
      child: Center(
        child: Column(
          spacing: 20.0,
          children: [
            CircularProgressIndicator(color: AppTheme.darkBlueishColor),
            Column(
              children: [
                title.text.medium.xl.color(AppTheme.darkBlueishColor).make(),
                if (subTitle.isNotBlank)
                  subTitle.text.medium.lg
                      .color(AppTheme.darkBlueishColor)
                      .make(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
