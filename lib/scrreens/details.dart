import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  final Item catalog;
  const Details({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: AppTheme.whiteColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
                width: double.infinity,
              ).hOneThird(context).p12(),
            ),
            Expanded(
              child: VxArc(
                height: 40,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: AppTheme.creamColor,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 65),
                  child: Column(
                    children: [
                      catalog.name.text.xl5
                          .color(AppTheme.darkBlueishColor)
                          .bold
                          .make(),
                      catalog.desc.text.xl.medium
                          .color(AppTheme.grayColor)
                          .make(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: AppTheme.creamColor,
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            "\$${catalog.price}".text.xl3
                .color(AppTheme.darkBlueishColor)
                .bold
                .red800
                .make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(0),
                backgroundColor: WidgetStatePropertyAll(
                  AppTheme.darkBlueishColor,
                ),
                foregroundColor: WidgetStatePropertyAll(AppTheme.creamColor),
              ),
              child: "Add to cart".text.bold.xl.make(),
            ),
          ],
        ).pOnly(left: 24, right: 24, top: 16, bottom: 16),
      ),
    );
  }
}
