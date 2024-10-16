class Ingredient {
  String name;
  double quantity;
  String unit;

  Ingredient(this.name, this.quantity, this.unit);

  void updateQuantity(double newQuantity) {
    quantity = newQuantity;
  }
}
