class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl; // This will now be local asset path
  final String category;
  final bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.isFavorite = false,
  });

  Product copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    String? imageUrl,
    String? category,
    bool? isFavorite,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
      category: category ?? this.category,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

// Sample Products Data with local images
// Image names match product names (in English for file system)
List<Product> sampleProducts = [
  Product(
    id: '1',
    name: 'آيفون 15 برو',
    description: 'أحدث آيفون مع شريحة A17 برو، تصميم التيتانيوم، ونظام كاميرا مذهل.',
    price: 999.99,
    imageUrl: 'assets/images/iphone_15_pro.png',
    category: 'إلكترونيات',
  ),
  Product(
    id: '2',
    name: 'ماك بوك برو',
    description: 'لابتوب 14 إنش مع شريحة M3، مثالي للمطورين والمبدعين.',
    price: 1499.99,
    imageUrl: 'assets/images/macbook_pro.png',
    category: 'إلكترونيات',
  ),
  Product(
    id: '3',
    name: 'سماعات سوني',
    description: 'سماعات لاسلكية عازلة للضوضاء مع جودة صوت استثنائية.',
    price: 299.99,
    imageUrl: 'assets/images/sony_headphones.png',
    category: 'إلكترونيات',
  ),
  Product(
    id: '4',
    name: 'قميص نايكي رياضي',
    description: 'قميص قطني مريح للارتداء اليومي.',
    price: 49.99,
    imageUrl: 'assets/images/nike_shirt.png',
    category: 'ملابس',
  ),
  Product(
    id: '5',
    name: 'سترة جلدية',
    description: 'سترة جلدية كلاسيكية، مثالية لفصل الشتاء.',
    price: 199.99,
    imageUrl: 'assets/images/leather_jacket.png',
    category: 'ملابس',
  ),
  Product(
    id: '6',
    name: 'برمجة فلاتر',
    description: 'دليل كامل لتطوير تطبيقات فلاتر مع مشاريع عملية.',
    price: 39.99,
    imageUrl: 'assets/images/flutter_book.png',
    category: 'كتب',
  ),
  Product(
    id: '7',
    name: 'مصباح مكتبي',
    description: 'مصباح LED بقابلية تعديل السطوع.',
    price: 29.99,
    imageUrl: 'assets/images/desk_lamp.png',
    category: 'منزل ومعيشة',
  ),
];