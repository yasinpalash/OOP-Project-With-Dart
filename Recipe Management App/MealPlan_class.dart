import 'DateRange_class.dart';
import 'Recipe_class.dart';
import 'shopping_list_class.dart';

class MealPlan {
  int id;
  String name;
  List<Recipe> recipes = [];

  DateRange dateRange;

  MealPlan(this.id, this.name, this.dateRange);

  void addRecipe(Recipe recipe) {
    recipes.add(recipe);
  }

  void removeRecipe(int recipeId) {
    recipes.removeWhere((element) => element.id == recipeId);
  }

  ShoppingList getShoppingList() {
    ShoppingList shoppingList = ShoppingList(id: id, items: {});
    for (var recipe in recipes) {
      for (var ingredient in recipe.ingredients) {
        if (shoppingList.items.containsKey(ingredient.name)) {
          shoppingList.items[ingredient.name] =
              shoppingList.items[ingredient.name]! + ingredient.quantity;
        } else {
          shoppingList.items[ingredient.name] = ingredient.quantity;
        }
      }
    }
    return shoppingList;
  }
}
