import 'dart:convert';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/home_page_widgets/app_header.dart';
import 'package:catalog_app/widgets/home_page_widgets/catalog_list.dart';
import 'package:catalog_app/widgets/loading.dart';
import "package:velocity_x/velocity_x.dart";
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString(
      "assets/files/catalog.json",
    );
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModal.items = List.from(
      productsData,
    ).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Container(
          padding: Vx.mOnly(top: 32, left: 30, right: 30, bottom: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppHeader(),
              if (CatalogModal.items.isNotEmpty)
                CatalogList().expand()
              else
                Loading(title: "Loading...", subTitle: "hasid"),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).hoverColor,
        shape: StadiumBorder(),
        elevation: 0.5,

        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        child: Icon(Icons.shopping_cart_outlined),
      ),
      endDrawer: AppDrawer(),
      endDrawerEnableOpenDragGesture: false,
    );
  }
}
