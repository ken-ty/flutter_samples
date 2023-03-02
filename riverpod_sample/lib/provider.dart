import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 定数

/// タイトルstateのプロバイダ
final titleProvider = Provider<String>((ref) {
  return 'タイトル';
});

/// メッセージstateのプロバイダ
final messageProvider = Provider<String>((ref) {
  return 'メッセージ';
});

/// 変数

/// カウントstateのプロバイダ
final countProvider = StateProvider<int>((ref) {
  return 0;
});
