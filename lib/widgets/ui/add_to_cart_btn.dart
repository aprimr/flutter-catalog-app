import 'package:catalog_app/models/cart.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartBtn extends StatefulWidget {
  final Item catalog;
  const AddToCartBtn({super.key, required this.catalog});

  @override
  State<AddToCartBtn> createState() => _AddToCartBtnState();
}

class _AddToCartBtnState extends State<AddToCartBtn> {
  final _cart = CartModal();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          final catalog = CatalogModal();
          _cart.catalog = catalog;
          _cart.addItem(widget.catalog);
          isInCart = !isInCart;

          setState(() {});
        }
      },
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(
          Theme.of(context).highlightColor,
        ),
        foregroundColor: WidgetStatePropertyAll(AppTheme.creamColor),
      ),
      child: isInCart
          ? Icon(Icons.done, color: Theme.of(context).hoverColor, size: 24)
          : "Add to cart".text.bold.lg
                .color(Theme.of(context).cardColor)
                .make(),
    );
  }
}
