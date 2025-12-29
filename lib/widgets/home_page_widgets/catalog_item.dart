import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:catalog_app/widgets/home_page_widgets/catalog_image.dart';
import 'package:catalog_app/widgets/ui/add_to_cart_btn.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                spacing: 5.0,
                children: [
                  catalog.name.text.lg
                      .color(Theme.of(context).primaryColor)
                      .bold
                      .make(),
                  catalog.desc.text.medium.medium
                      .color(AppTheme.grayColor)
                      .make(),
                  OverflowBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    spacing: 10,
                    children: [
                      "\$${catalog.price}".text.xl
                          .color(Theme.of(context).primaryColor)
                          .bold
                          .make(),
                      AddToCartBtn(catalog: catalog),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).color(Theme.of(context).cardColor).rounded.square(150).make().py16();
  }
}
