import 'package:catalog_app/models/catalog.dart';

class CartModal {
  late CatalogModal _catalog;

  // list of item ids in cart
  final List<int> _itemIds = [];

  // get catalog
  CatalogModal get catalog => _catalog;

  // set catalog
  set catalog(CatalogModal newCatalog) {
    _catalog = newCatalog;
  }

  // get cart items
  List<Item> get items => _itemIds.map((el) => _catalog.getById(el)).toList();

  // get cart price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // add items in cart
  void addItem(Item item) {
    _itemIds.add(item.id);
  }

  // remove items in cart
  void removeItem(Item item) {
    _itemIds.remove(item.id);
  }
}
