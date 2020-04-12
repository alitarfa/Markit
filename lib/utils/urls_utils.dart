class UrlUtils {
  // to define the Urls here

  // Verify that given fields not empty
  static isVerifiedFields(
      String userName, String email, String phoneNumber, String password) {
    return userName.isNotEmpty &&
        email.isNotEmpty &&
        phoneNumber.isNotEmpty &&
        password.isNotEmpty;
  }
}
