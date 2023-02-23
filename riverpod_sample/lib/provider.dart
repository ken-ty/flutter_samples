import 'package:flutter_riverpod/flutter_riverpod.dart';

final titleProvider = Provider<String>((ref) => 'Flutter デモページ');

final messageProvider =
    Provider<String>((ref) => 'You have pushed the button this many times:');

final countProvider = StateProvider<int>((ref) => 0);
