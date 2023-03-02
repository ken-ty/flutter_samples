import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/data/count_data.dart';
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
                ref.watch(countDataProvider).count.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  tooltip: '-1',
                  onPressed: () => ref
                      .read(countDataProvider.notifier)
                      .update((state) => state.copyWith(count: state.count - 1, countDown: state.countDown + 1)),
                  child: const Icon(CupertinoIcons.minus),
                ),
                FloatingActionButton(
                  tooltip: '+1',
                  onPressed: () => ref
                      .read(countDataProvider.notifier)
                      .update((state) => state.copyWith(count: state.count + 1, countUp: state.countUp + 1)),
                  child: const Icon(CupertinoIcons.plus),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(ref.read(countDataProvider).countDown.toString()),
                Text(ref.read(countDataProvider).countUp.toString()),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'リセット',
        onPressed: () => ref.read(countDataProvider.notifier).state = CountData(0, 0, 0),
        child: const Icon(CupertinoIcons.refresh),
      ),
    );
  }
}
