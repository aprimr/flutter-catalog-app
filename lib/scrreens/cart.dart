import 'package:catalog_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(title: Text("My Cart")),
      body: Container(
        padding: EdgeInsets.only(top: 6, left: 32, right: 32, bottom: 0),
        child: Column(
          children: [
            Expanded(child: _CartList()),
            SizedBox(height: 20),
            _CartTotal(),
          ],
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  final _cart = CartModal();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: double.infinity,
      color: Theme.of(context).canvasColor,
      padding: EdgeInsets.only(top: 10, bottom: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Total Price
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Total Price".text.bold
                  .color(Theme.of(context).primaryColor)
                  .make(),
              "\$ ${_cart.totalPrice}".text.xl3.semiBold.green600.make(),
            ],
          ),
          // Buy Now Btn
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  backgroundColor: Theme.of(context).cardColor,
                  icon: Icon(
                    Icons.front_loader,
                    size: 42.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  title: Text(
                    "This feature is under development.",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "OK",
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              );
            },
            style: ButtonStyle(
              elevation: WidgetStatePropertyAll(0),
              backgroundColor: WidgetStatePropertyAll(
                Theme.of(context).highlightColor,
              ),
              foregroundColor: WidgetStatePropertyAll(
                Theme.of(context).cardColor,
              ),
            ),
            child: "Buy Now".text.bold.xl.make(),
          ),
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart = CartModal();
  @override
  Widget build(BuildContext context) {
    return _cart.items.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.production_quantity_limits_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 58,
                ),
                SizedBox(height: 8),
                Text(
                  "Cart is empty.",
                  style: TextStyle(
                    color: Theme.of(context).focusColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          )
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              leading: Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.network(
                  _cart.items[index].image,
                  width: 80.0,
                  height: double.infinity,
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _cart.items[index].name.text.semiBold
                      .color(Theme.of(context).primaryColor)
                      .make(),
                  "\$${_cart.items[index].price}".text.xl.bold
                      .color(Theme.of(context).focusColor)
                      .make(),
                ],
              ),
              trailing: IconButton(
                onPressed: () {
                  _cart.removeItem(_cart.items[index]);
                  setState(() {});
                },
                icon: Icon(Icons.cancel_outlined),
              ),
            ),
          );
  }
}
