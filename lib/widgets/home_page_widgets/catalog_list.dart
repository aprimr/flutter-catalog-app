import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/scrreens/details.dart';
import 'package:catalog_app/widgets/home_page_widgets/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModal.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModal.getByPosition(index);
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(catalog: catalog),
              ),
            );
          },
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}
