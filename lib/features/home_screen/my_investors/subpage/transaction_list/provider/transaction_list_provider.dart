import 'package:flutter/widgets.dart';

class TransactionListProvider extends ChangeNotifier {
  int _selectedIndex = 0;
  get selectedIndex => _selectedIndex;
  void onSelected(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
