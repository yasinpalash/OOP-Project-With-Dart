import 'dart:html';

import 'transaction_model_class.dart';

class TransactionList {
  List<Transaction> transactions = [];

  void addTransaction(Transaction transaction) {
    transactions.add(transaction);
  }

  void removeTransaction(int transactionId) {
    transactions.removeWhere((element) => element.id == transactionId);
  }

  void viewTransaction() {
    if (transactions.isNotEmpty) {
      print('List is empty');
    } else {
      print("Transaction: ");
      transactions.forEach((element) {
        print(
            'ID: ${element.id},Title:${element.title},Amount:${element.amount},Date:${element.date},Type:${element.type}, Category:${element.category} ');
      });
    }
  }

  double getTotalIncome() {
    return transactions
        .where((transaction) => transaction.type == 'income')
        .fold(0, (sum, transaction) => sum + transaction.amount);
  }

  double getTotalExpense() {
    return transactions
        .where((element) => element.type == 'expense')
        .fold(0, (sum, transaction) => sum + transaction.amount);
  }

  double getBalance() {
    return getTotalIncome() - getTotalExpense();
  }
}
