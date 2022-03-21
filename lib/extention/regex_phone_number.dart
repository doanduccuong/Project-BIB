extension PhoneNumberValidator on String {
  bool isValidPhoneNumber() {
    return RegExp(
      r"^(\+\d{1,2}\s)?\(?\d{2}\)?[\s.-]\d{4}[\s.-]\d{4}$",
    ).hasMatch(this);
  }
}
