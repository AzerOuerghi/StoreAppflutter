class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "PNEUS",
    imagePath: "assets/images/categories_images/PNEUS.png",
  ),
  CategoryItem(
    name: "Accessoires voiture ",
    imagePath: "assets/images/categories_images/Accessoires.png",
  ),
  CategoryItem(
    name: "Disques de frein ",
    imagePath: "assets/images/categories_images/Disques.png",
  ),
  CategoryItem(
    name: "Huile moteur ",
    imagePath: "assets/images/categories_images/Huile.png",
  ),
  CategoryItem(
    name: "OUTILLAGE & ÉQUIPEMENT",
    imagePath: "assets/images/categories_images/ÉQUIPEMENT.png",
  ),
  CategoryItem(
    name: "AMPOULES VOITURE",
    imagePath: "assets/images/categories_images/AMPOULES.png",
  ),
];
