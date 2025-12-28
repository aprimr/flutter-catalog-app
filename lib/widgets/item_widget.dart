import 'package:flutter/material.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.1,
      child: ListTile(
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price}",
          style: TextStyle(
            fontSize: 18,
            color: Colors.deepPurple,
            fontWeight: FontWeight.w900,
            fontFamily: GoogleFonts.lato().fontFamily,
          ),
        ),
      ),
    );
  }
}
