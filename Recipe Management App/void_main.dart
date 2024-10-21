import 'DateRange_class.dart';
import 'Ingredient_class.dart';
import 'MealPlan_class.dart';
import 'Recipe_class.dart';
import 'shopping_list_class.dart';

void main() {
  // Create a date range for the meal plan
  DateRange dateRange = DateRange(
    start: DateTime(2024, 10, 1),
    end: DateTime(2024, 10, 7),
  );

  // Create a meal plan with the custom date range
  MealPlan weeklyMealPlan = MealPlan(1, 'Weekly Plan', dateRange);

  // Add recipes, ingredients, and generate a shopping list as before
  Ingredient flour = Ingredient('Flour', 500, 'grams');
  Recipe pancakeRecipe =
      Recipe(1, 'Pancakes', 'Fluffy pancakes recipe', 'Breakfast', 30);
  pancakeRecipe.addIngredient(flour);

  weeklyMealPlan.addRecipe(pancakeRecipe);

  ShoppingList shoppingList = weeklyMealPlan.getShoppingList();
  print('Shopping List: ${shoppingList.items}');
}
