import 'package:flutter/foundation.dart';

class CartItem {
  String id;
  String title;
  int quantity;
  double price;

  CartItem(this.id, this.title, this.quantity, this.price);
}

class Cart with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int cartCount() {
    return _items.length;
  }

  double get totalAmount {
    var totalAmount = 0.0;
    _items.forEach((key, value) {
      totalAmount += value.price * value.quantity;
    });
    return totalAmount;
  }

  void addCart(String id, String title, double price) {
    if (_items.containsKey(id)) {
      _items.update(
          id,
          (value) =>
              CartItem(value.id, value.title, value.quantity + 1, value.price));
    } else {
      _items.putIfAbsent(id, () => CartItem(id, title, 1, price));
    }
    notifyListeners();
  }

  void removeItemFromCart(String productKey) {
    _items.remove(productKey);
    notifyListeners();
  }
}
