import 'Ingredient_class.dart';

class Recipe {
  int id;
  String title;
  String description;
  List<Ingredient> ingredients = [];
  List<String> step = [];
  String category;
  int cookingTime;
  Recipe(
      this.id, this.title, this.description, this.category, this.cookingTime);

  void addIngredient(Ingredient ingredient) {
    ingredients.add(ingredient);
  }

  void removeIngredient(String ingredientName) {
    ingredients.removeWhere((element) => element.name == ingredientName);
  }

  void updateStep(int stepIndex, String newStep) {
    if (stepIndex >= 0 && stepIndex < step.length) {
      step[stepIndex] = newStep;
    }
  }

  int getTotalIngredients() {
    return ingredients.length;
  }
}
