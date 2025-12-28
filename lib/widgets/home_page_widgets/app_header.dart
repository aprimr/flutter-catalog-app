import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "Catalog App".text.xl5.bold
                .color(Theme.of(context).primaryColor)
                .make(),
            IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                size: 42,
                color: Theme.of(context).highlightColor,
              ),
            ),
          ],
        ),

        "Trending Products".text.xl2
            .color(Theme.of(context).highlightColor)
            .make(),
        SizedBox(height: 10),
      ],
    );
  }
}
