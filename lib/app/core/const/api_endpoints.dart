import 'package:cms/app/core/config/app_config.dart';


class ApiEndpoints {
  
  static String get login => "${AppConfig.baseUrl}/auth/login";
  static String get register => "${AppConfig.baseUrl}/auth/register";
  static String userDetails(int userId) => "${AppConfig.baseUrl}/users/$userId";
  static String get posts => "${AppConfig.baseUrl}/posts";
}
