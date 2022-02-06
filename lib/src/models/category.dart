class Category {
  final int? categoryId;
  final String? name;
  Category({this.categoryId, this.name});
}

final trainCategory = Category(
  categoryId: 0,
  name: 'BASIC',
);

final busCategory = Category(
  categoryId: 1,
  name: 'MULTI-CITY',
);

final planeCategory = Category(
  categoryId: 2,
  name: 'PLANE',
);

final categories = [
  trainCategory,
  busCategory,
  // planeCategory,
];
