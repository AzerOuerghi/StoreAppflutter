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
      description: "Pneus pour véhicules",
      price: 9.8,
      imagePath: "assets/images/Products_images/pneu.jpg"),
  GroceryItem(
      id: 2,
      name: "Enjoliveurs ARGO",
      description: "14 Pouces, noir",
      price: 27.3,
      imagePath: "assets/images/Products_images/Jante.jpg"),
  GroceryItem(
      id: 3,
      name: "Couvre-volant",
      description: "noir, Rouge",
      price: 7.78,
      imagePath: "assets/images/Products_images/Couvre-volant.jpg"),
  GroceryItem(
      id: 4,
      name: "Housse de siège",
      description: "noir, Similicuir, avant",
      price: 4.68,
      imagePath: "assets/images/Products_images/Housse de siège.jpg"),
  GroceryItem(
      id: 5,
      name: "Support télé",
      description: "universel 55-85 ",
      price: 7.99,
      imagePath: "assets/images/Products_images/Support téléphone.jpg"),
  GroceryItem(
      id: 6,
      name: "Chargeur  ",
      description: "Nom d'entrées2",
      price: 4.99,
      imagePath: "assets/images/Products_images/Chargeur allume-cigare.jpg"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: 7,
      name: "Falken SINCERA ",
      description: "80 R13 Aptany RP203",
      price: .99,
      imagePath: "assets/images/wheels_images/Falken SINCERA.jpg"),
  GroceryItem(
      id: 8,
      name: "Aptany RP203",
      description: "Pneus été 135",
      price: 4.48,
      imagePath: "assets/images/wheels_images/Aptany RP203.jpg"),
  GroceryItem(
      id: 8,
      name: "jante acier",
      description: "hyper silber",
      price: 0.8,
      imagePath: "assets/images/wheels_images/jante acier.jpg"),
  GroceryItem(
      id: 9,
      name: "jante acier KRONPRINZ",
      description: "14 pouces ET35 noir",
      price: 8.5,
      imagePath: "assets/images/wheels_images/jante acier KRONPRINZ.png"),
  GroceryItem(
      id: 10,
      name: "Continental LDR ",
      description: "Pneus hiver 9.5 R17.5",
      price: 9.6,
      imagePath: "assets/images/wheels_images/Continental LDR.png"),
  GroceryItem(
      id: 11,
      name: "Goodyear Regional",
      description: "Pneus poids-lourd ",
      price: 4.9,
      imagePath: "assets/images/wheels_images/Goodyear Regional.png"),
];
