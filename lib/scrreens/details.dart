import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:catalog_app/widgets/ui/add_to_cart_btn.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  final Item catalog;
  const Details({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).hintColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Theme.of(context).hintColor,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(
                  catalog.image,
                  scale: 0.5,
                  width: double.infinity,
                ).hOneThird(context).p12(),
              ),
              Expanded(
                child: VxArc(
                  height: 40,
                  arcType: VxArcType.convey,
                  edge: VxEdge.top,
                  child: Container(
                    color: Theme.of(context).hoverColor,
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 65),
                    child: Column(
                      children: [
                        catalog.name.text.xl5
                            .color(Theme.of(context).primaryColor)
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
      ),
      bottomNavigationBar: Container(
        color: Theme.of(context).hoverColor,
        child: OverflowBar(
          alignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            "\$${catalog.price}".text.xl3
                .color(Theme.of(context).highlightColor)
                .bold
                .make(),
            AddToCartBtn(catalog: catalog),
          ],
        ).pOnly(left: 24, right: 24, top: 16, bottom: 16),
      ),
    );
  }
}
