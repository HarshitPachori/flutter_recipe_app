class Recipe {
  late String title;
  late String description;
  late String image;
  late int calories;
  late int carbo;
  late int protein;
  Recipe(this.title, this.description, this.image, this.calories, this.carbo,
      this.protein);
}

List<Recipe> getRecipe() {
  return <Recipe>[


    Recipe(
        "Paneer Butter Masala ", "Delicious Paneer", "https://i2.wp.com/eeatit.com/wp-content/uploads/2021/02/paneer-butter-masala.png?fit=600%2C600&ssl=1", 150, 30, 8),


    Recipe("Dal Makhni ", "so irresistibly delicious", "https://desichef.in/assets/img/product/slider-image/dal_makhani.png", 150, 35, 12),
    Recipe("Laccha Parantha ", "so irresistibly delicious", "https://desichef.in/assets/img/home/slider-img-4.png", 250, 35, 6),
    Recipe("Full Veg Thali ", "so irresistibly delicious", "https://desichef.in/assets/img/home/home-party.png", 250, 55, 20),
    Recipe("Amritsari Chole" , "So Irresistibly delicious", "https://desichef.in/assets/img/product/slider-image/amritsari_chole.png", 200, 45,
        12),
  ];
}
