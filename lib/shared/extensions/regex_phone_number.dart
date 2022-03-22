extension PhoneNumberValidator on String {
  bool isValidPhoneNumber() {
    return RegExp(
       r"(\+62 ((\d{3}([ -]\d{3,})([- ]\d{4,})?)|(\d+)))|(\(\d+\) \d+)|\d{3}( \d+)+|(\d+[ -]\d+)|\d+",
    ).hasMatch(this);
  }
}
