import 'package:flutter_riverpod/flutter_riverpod.dart';

/// タイトルstateのプロバイダ
final titleProvider = Provider<String>((ref) => 'タイトル');

/// メッセージstateのプロバイダ
final messageProvider = Provider<String>((ref) => 'メッセージ');

/// カウントstateのプロバイダ
final countProvider = StateProvider<int>((ref) => 0);
