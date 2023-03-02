import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        ref.read(titleProvider), // 定数(Provider)だから.state のようにしない
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "${ref.watch(countProvider)}", // 変数(StateProvider)
            ),
            Text(ref.read(messageProvider)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          int now = ref.read(countProvider);
          ref.read(countProvider.notifier).update((state) => state + 1);
        },
      ),
    );
  }
}
