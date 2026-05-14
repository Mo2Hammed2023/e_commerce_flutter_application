import 'package:flutter/material.dart';
import '../models/product.dart';
import 'category_products_screen.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      'إلكترونيات',
      'ملابس',
      'كتب',
      'منزل ومعيشة',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('الأقسام'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: categories.length,
        itemBuilder: (ctx, index) {
          final category = categories[index];
          final iconData = _getIconForCategory(category);
          final color = _getColorForCategory(category);
          final productCount = sampleProducts
              .where((p) => p.category == category)
              .length;

          return GestureDetector(
            onTap: () {
              final products = sampleProducts
                  .where((p) => p.category == category)
                  .toList();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CategoryProductsScreen(
                    categoryName: category,
                    products: products,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: color.withValues(alpha: 0.3),
                  width: 1,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iconData,
                    size: 50,
                    color: color,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    category,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$productCount منتجات',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  IconData _getIconForCategory(String category) {
    switch (category) {
      case 'إلكترونيات':
        return Icons.devices;
      case 'ملابس':
        return Icons.checkroom;
      case 'كتب':
        return Icons.menu_book;
      case 'منزل ومعيشة':
        return Icons.home;
      default:
        return Icons.category;
    }
  }

  Color _getColorForCategory(String category) {
    switch (category) {
      case 'إلكترونيات':
        return Colors.blue;
      case 'ملابس':
        return Colors.green;
      case 'كتب':
        return Colors.orange;
      case 'منزل ومعيشة':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }
}