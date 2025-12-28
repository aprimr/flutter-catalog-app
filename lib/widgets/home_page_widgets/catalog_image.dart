import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(image, height: double.infinity).box.roundedSM.p4
        .color(Theme.of(context).hintColor)
        // .color(Colors.red)
        .make()
        .p16()
        .w32(context);
  }
}
