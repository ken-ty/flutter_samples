import 'package:http/http.dart' as http; // 使用時にライブラリをインポートする。

class RandomuserApi {
  final url = 'https://randomuser.me/api/';

  /// get で叩く
  Future<http.Response> get() async {
    return await http.get(Uri.parse(url));
  }
}
