class GroceryItem {
  final int? id;
  final String name;
  final String description;
  final double price;
  final String imagePath;

  GroceryItem({
    this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
  });
}

var demoItems = [
  GroceryItem(
      id: 1,
      name: "APlus A609",
      description: "Type: Pneus pour véhicules de tourisme",
      price: 49.8,
      imagePath: "assets/images/Products_images/pneu.jpg"),
  GroceryItem(
      id: 2,
      name: "Enjoliveurs ARGO",
      description: "14 Pouces, noir",
      price: 27.38,
      imagePath: "assets/images/Products_images/jante.jpg"),
  GroceryItem(
      id: 3,
      name: "Couvre-volant",
      description: "noir, Rouge, Ø: 37-39cm,",
      price: 7.78,
      imagePath: "assets/images/Products_images/Couvre-volant.jpg"),
  GroceryItem(
      id: 4,
      name: "Housse de siège",
      description: "noir, Similicuir, avant",
      price: 34.68,
      imagePath: "assets/images/Products_images/Housse de siège.jpg"),
  GroceryItem(
      id: 5,
      name: "Support téléphone",
      description: "universel 55-85 mm 360°",
      price: 7.99,
      imagePath: "assets/images/Products_images/Support téléphone.jpg"),
  GroceryItem(
      id: 6,
      name: "Chargeur allume-cigare ",
      description: "Nombre d'entrées/sorties: 2 USB",
      price: 4.99,
      imagePath: "assets/images/Products_images/Chargeur allume-cigare .jpg"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Falken SINCERA ",
      description: "80 R13 Aptany RP203",
      price: 71.99,
      imagePath: "assets/images/wheels_images/Falken SINCERA.jpg"),
  GroceryItem(
      id: 8,
      name: "Aptany RP203",
      description: "Pneus été 135",
      price: 74.48,
      imagePath: "assets/images/wheels_images/Aptany RP203.jpg"),
  GroceryItem(
      id: 8,
      name: "jante acier",
      description: "hyper silber",
      price: 40.98,
      imagePath: "assets/images/wheels_images/jante acier.jpg"),
  GroceryItem(
      id: 9,
      name: "jante acier KRONPRINZ",
      description: "14 pouces ET35 noir",
      price: 81.50,
      imagePath: "assets/images/wheels_images/jante acier KRONPRINZ.png"),
  GroceryItem(
      id: 10,
      name: "Continental LDR ",
      description: "Pneus hiver 9.5 R17.5",
      price: 298.68 ,
      imagePath: "assets/images/wheels_images/Continental LDR .png"),
  GroceryItem(
      id: 11,
      name: "Goodyear Regional",
      description: "Pneus poids-lourd ",
      price: 144.99,
      imagePath: "assets/images/wheels_images/Goodyear Regional.png"),
];
