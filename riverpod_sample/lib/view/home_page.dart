import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(ref.read(titleProvider))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(ref.read(messageProvider)),
            Consumer(
              builder: (context, ref, child) => Text(
                ref.watch(countProvider).toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  tooltip: '-1',
                  onPressed: () => ref.read(countProvider.notifier).state++,
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  tooltip: '+1',
                  onPressed: () => ref.read(countProvider.notifier).state++,
                  child: const Icon(CupertinoIcons.plus),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('0'),
                Text('0'),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'リセット',
        onPressed: () => ref.read(countProvider.notifier).state++,
        child: const Icon(CupertinoIcons.refresh),
      ),
    );
  }
}
