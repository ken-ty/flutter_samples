import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/data/count_data.dart';

/// タイトルstateのプロバイダ
final titleProvider = Provider<String>((ref) => 'タイトル');

/// メッセージstateのプロバイダ
final messageProvider = Provider<String>((ref) => 'メッセージ');

/// カウントstateのプロバイダ ( 後で消す )
final countProvider = StateProvider<int>((ref) => 0);

/// カウントstateのプロバイダ
final countDataProvider = StateProvider<CountData>((ref) => CountData(0, 0, 0));
