extension PasswordValidator on String {
  String? validatePassword(String value) {
    if (value.length < 9) {
      return 'Password length must be at least 9 character';
    }
    return lowercaseValidate(value);
  }

  String? lowercaseValidate(String value) {
    RegExp lowerRegex = RegExp(r"(?=.*[a-z])");
    if (!lowerRegex.hasMatch(value)) {
      return 'Password must contain at least one lower case ';
    }
    return upperCaseValidate(value);
  }

  String? upperCaseValidate(String value) {
    RegExp upperRegex = RegExp(r"(?=.*[A-Z])");
    if (!upperRegex.hasMatch(value)) {
      return 'Password must contain at least one upper case ';
    }
    return numberValidate(value);
  }

  String? numberValidate(String value) {
    RegExp numberRegex = new RegExp(r"(?=.*?[0-9])");
    if (!numberRegex.hasMatch(value)) {
      return 'Password must contain at least one numeric number ';
    }
    return specialValidate(value);
  }

  String? specialValidate(String value) {
    RegExp specialRegex = RegExp(r"(?=.*?[!@#\$&*~])");
    if (!specialRegex.hasMatch(value)) {
      return 'Password must contain at least one special character ';
    }
    return null;
  }
}
