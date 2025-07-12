
import 'package:http/http.dart' as http;

class ApiClient {
  static ApiClient? _singleton = ApiClient._internal();
  ApiClient._internal();
  factory ApiClient() => _singleton ??= ApiClient._internal();

  /// Get Request
  Future get({required String url}) async {
    try {
      final http.Response response = await http.get(Uri.parse(url));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// Post Request
  Future post({
    required String url,
    required Object data,
    bool? isLogin,
  }) async {
    try {
      final response = await http.post(Uri.parse(url), body: data);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// Post Request
  Future postStudentAttendance({
    required String url,
    required Object data,
    bool? isLogin,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        body: data,
        headers: {'Content-Type': 'application/json'},
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  /// Get Request
  Future put({required String url, required Object data}) async {
    try {
      final response = await http.put(Uri.parse(url), body: data);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    _singleton = null;
  }
}
