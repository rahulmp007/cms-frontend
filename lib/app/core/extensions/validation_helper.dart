mixin ValidationHelper {
  bool isEmailValid({required String value}) => RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(value);

  bool isEmail({required String value}) => value.contains('@');

  String? checkUsername({required String value}) {
    if (value.isEmpty) {
      return 'Please enter username';
    }
    return null;
  }

  String? checkPassword({required String value}) {
    if (value.isEmpty) {
      return 'Please enter password';
    } else if (value.length <= 5) {
      return 'Short password,Must be more than 6 charater';
    }
    return null;
  }
}
