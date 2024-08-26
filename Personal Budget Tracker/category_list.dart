import 'category_model_class.dart';

class CategoryList {
  List<Category> categories = [];

  void addCategory(Category category) {
    categories.add(category);
  }

  void removeCategory(String categoryName) {
    categories.removeWhere((element) => element.name == categoryName);
  }

  void viewCategories() {
    if (categories.isEmpty) {
      print('No category is here');
    } else {
      print('Categories:');

      categories.forEach((element) {
        print('Name : ${element.name},Color : ${element.color}');
      });
    }
  }
}
