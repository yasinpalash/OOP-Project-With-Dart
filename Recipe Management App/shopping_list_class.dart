class ShoppingList {
  int id;
  Map<String, double> items;
  bool isCompleted;

  ShoppingList(
      {required this.id, required this.items, this.isCompleted = false});

  void addItem(String ingredientName, double quantity) {
    if (items.containsKey(ingredientName)) {
      items[ingredientName] = items[ingredientName]! + quantity;
    }else{
      items[ingredientName] = quantity;
    }
  }
void removeItem(String ingredientName) {
    items.remove(ingredientName);
  }

  void markAsCompleted() {
    isCompleted = true;
  }

}
