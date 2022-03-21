extension FullName on String {
  bool isValidFullName() {
    return RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(this);
  }
}
