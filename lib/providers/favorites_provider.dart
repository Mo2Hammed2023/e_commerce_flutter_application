import 'package:flutter/material.dart';
import '../models/product.dart';

class FavoritesProvider extends ChangeNotifier {
  final Map<String, Product> _favorites = {};

  List<Product> get favorites => _favorites.values.toList();

  bool get hasFavorites => _favorites.isNotEmpty;

  int get count => _favorites.length;

  bool isFavorite(String productId) {
    return _favorites.containsKey(productId);
  }

  void toggleFavorite(Product product) {
    if (_favorites.containsKey(product.id)) {
      _favorites.remove(product.id);
    } else {
      _favorites.putIfAbsent(product.id, () => product);
    }
    notifyListeners();
  }

  void removeFromFavorites(String productId) {
    _favorites.remove(productId);
    notifyListeners();
  }

  void clearFavorites() {
    _favorites.clear();
    notifyListeners();
  }
}