import 'package:flutter/material.dart';

/// An extension used to easily add a validation method to a [TextFormField].

extension ValidationExtension on BuildContext {
  String? validateFieldNotEmpty(String? value) =>
      value == null || value.isEmpty ? 'Field cannot be empty' : null;

  String? validateFieldNotNull<T>(T? value) =>
      value == null ? 'Field cannot be empty' : null;

  String? validateEmailAddress(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);

    return !emailValid ? 'Enter a Valid Email Address' : null;
  }

  String? validatePassword(String? value) => value == null || value.length < 8
      ? 'Password must have 8 or more characters'
      : null;

  String? validateConfirmPassword(
      {required String? value, required String? initialPassword}) {
    if (value == null || value.isEmpty) return 'Field cannot be empty';
    bool isConfirmed = value != initialPassword;
    return (isConfirmed) ? 'Passwords do not match' : null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) return 'Field cannot be empty';

    bool isPhoneValid = RegExp(r'(^(?:9)?[0-9]{11}$)').hasMatch(value);

    return (isPhoneValid) ? null : 'Please enter a valid phone number';
  }

  String? validateFullName<T>(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    if (value.split(' ').length < 2) {
      return 'Please enter your FULL NAME';
    } else {
      return null;
    }
  }

  String? validateOnlyNumbers(String? value) {
    if (value == null) return 'Field cannot be empty';

    if (value.isEmpty) return 'Field cannot be empty';

    final isNumber = RegExp(r'^[0-9]+$').hasMatch(value);

    return isNumber ? null : 'Please enter a valid number';
  }

  /// This method is used to prevent the user from adding space.
  RegExp validateNoSpacesInBetween() => RegExp(r'\s');
}

extension CharacterValidation on String {
  bool containsUpper() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 65 && code <= 90) return true;
    }
    return false;
  }

  bool containsLower() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 97 && code <= 122) return true;
    }
    return false;
  }

  bool containsSpecialChar() {
    for (var i = 0; i < length; i++) {
      var char = this[i];
      if ("#?!@\$%^&*-_.,/[]{}|;:+=".contains(char)) return true;
    }
    return false;
  }

  bool containsUsernameSpecial() {
    for (var i = 0; i < length; i++) {
      var char = this[i];
      if ("#?!@\$%^&*,/[]{}|;:+=".contains(char)) return true;
    }
    return false;
  }

  bool containsNumber() {
    for (var i = 0; i < length; i++) {
      var code = codeUnitAt(i);
      if (code >= 48 && code <= 57) return true;
    }
    return false;
  }
}

extension RemoveCommas on String {
  removeCommas() {
    if (contains(",")) {
      return replaceAll(",", "");
    } else {
      return this;
    }
  }

  removeTag() {
    if (contains('@')) {
      return replaceFirst('@', "");
    }
  }
}

extension CapitalizeFirst on String {
  String capiTalizeFirst() {
    return this[0].toUpperCase() + substring(1);
  }
}
