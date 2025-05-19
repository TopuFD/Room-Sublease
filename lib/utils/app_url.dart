class AppUrl {
  static const String baseUrl = "http://147.93.29.184:5010/api/v1";
  static String imageUrl({image}) => "http://147.93.29.184:5010$image";
  static const googleMapPlaceKey = "AIzaSyCZ6YIiEkZnGVCQUyFIKsu3RdOJ49GVeLU";

  static const String signUp = "$baseUrl/users/create";
  static const String signUpOtpVerify = "$baseUrl/users/create-user-verify-otp";
  static const String completeProfile = "$baseUrl/users/complete";
  static const String signin = "$baseUrl/auth/login";
  static const String forgetPassword = "$baseUrl/auth/forgot-password-otpByEmail";
  static const String forgetOtpVerify = "$baseUrl/auth/forgot-password-otp-match";
  static const String resetPassword = "$baseUrl/auth/forgot-password-reset";
  static const String catagory = "$baseUrl/category";
}
