import 'DateRange_class.dart';
import 'Recipe_class.dart';

class MealPlan {
  int id;
  String name;
  List<Recipe> recipes = [];

  DateRange dateRange;

  MealPlan(this.id, this.name, this.dateRange);
}
