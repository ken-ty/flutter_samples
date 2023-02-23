import 'package:flutter/material.dart';
import 'package:randomuser/model/randomuser_api.dart';

/// APIをコールできるページ
class ApiCallPage extends StatefulWidget {
  const ApiCallPage({super.key, required this.title});
  final String title;

  @override
  State<ApiCallPage> createState() => _ApiCallPageState();
}

class _ApiCallPageState extends State<ApiCallPage> {
  String _responseStatusCode = '404とか';
  String _responseBodyString = 'レスポンスここに';

  final randomuserApi = RandomuserApi();

  /// APIコールを実行する
  void _callApi() async {
    final response = await randomuserApi.get();
    setState(() {
      _responseStatusCode = response.statusCode.toString();
      _responseBodyString = response.body.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text('APIレスポンス')),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey.shade400,
              child: Text(_responseStatusCode),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.grey.shade400,
              child: Text(_responseBodyString),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _callApi,
        child: const Icon(Icons.api),
      ),
    );
  }
}
