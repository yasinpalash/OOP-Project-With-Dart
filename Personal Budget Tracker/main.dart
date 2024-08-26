import 'category_list.dart';
import 'category_model_class.dart';
import 'transaction_list.dart';
import 'transaction_model_class.dart';

void main() {
  // Create a transaction list
  TransactionList transactionList = TransactionList();

  // Add transactions
  transactionList.addTransaction(
      Transaction(1, 'Salary', 1000, DateTime.now(), 'income', 'Salary'));
  transactionList.addTransaction(
      Transaction(2, 'Groceries', 200, DateTime.now(), 'expense', 'Food'));
  // View transactions
  transactionList.viewTransaction();

  // Calculate total income, expense, and balance
  print('Total Income: ${transactionList.getTotalIncome()}');
  print('Total Expense: ${transactionList.getTotalExpense()}');
  print('Balance: ${transactionList.getBalance()}');

  // Create a category list
  CategoryList categoryList = CategoryList();

  // Add categories
  categoryList.addCategory(Category('Food', "green"));
  categoryList.addCategory(Category('Salary', "blue"));

  // View categories
  categoryList.viewCategories();
}
