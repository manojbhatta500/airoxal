class GlobalApis {
  // base url api
  static String baseUrl = 'http://18.199.141.222';

  // signup api

  static String signupApi = '$baseUrl/api/register';

  // login api

  static String loginApi = '$baseUrl/api/login';

  // forgot password api
  static String forgotPasswordApi = '$baseUrl/api/forgotPassword';

  // verify otp api
  static String verifyOtpApi = '$baseUrl/api/otp/verify';

  // reset password api

  static String resetPasswordApi = '$baseUrl/api/updatePassword';

  // changed password api
  static String changedPasswordAPi = '$baseUrl/api/PasswordChanged';

  // update profile api
  static String updateProfileApi = '$baseUrl/api/update/profile';
}
