class BannerModel {
  int id;
  String title;
  String image;

  BannerModel(this.id, this.title, this.image);
}

class CategoryModel {
  final int id;
  final String title;
  final String image;

  CategoryModel(this.id, this.title, this.image);
}

class ProductModel {
  final int id;
  final int catId;
  final String title;
  final int discount;
  final int price;
  final int finalPrice;
  final String image;
  final bool isSpecial;

  ProductModel(this.id, this.catId, this.title, this.discount, this.price,
      this.finalPrice, this.image,
      {this.isSpecial = false});
}
