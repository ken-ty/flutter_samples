import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) {
  return 'タイトル';
});

final messageProvider = Provider<String>((ref) {
  return 'メッセージ';
});
