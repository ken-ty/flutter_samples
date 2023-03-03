import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_sample/logic/logic.dart';

void main() {
  Logic target = Logic();
  setUp(() async {
    target = Logic();
  });

  test('init, 初期値の確認', () async {
    expect(target.countData.count, 0);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 0);
  });
  test('increase, increase メソッドの実装確認', () async {
    // 1回実行
    target.increase();
    expect(target.countData.count, 1);
    expect(target.countData.countUp, 1);
    expect(target.countData.countDown, 0);

    // 追加で3回実行
    target.increase();
    target.increase();
    target.increase();
    expect(target.countData.count, 4);
    expect(target.countData.countUp, 4);
    expect(target.countData.countDown, 0);
  });
  test('decrease, decrease メソッドの実装確認', () async {
    // 1回実行
    target.decrease();
    expect(target.countData.count, -1);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 1);

    // 追加で3回実行
    target.decrease();
    target.decrease();
    target.decrease();
    expect(target.countData.count, -4);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 4);
  });
  test('reset', () async {
    // increase, decrease を適当な数だけ呼ぶ
    // increase 2回, decrease 3回
    target.increase();
    target.decrease();

    target.decrease();
    target.increase();
    target.decrease();

    expect(target.countData.count, -1);
    expect(target.countData.countUp, 2);
    expect(target.countData.countDown, 3);

    // reset 実行して 各値が 0になる
    target.reset();
    expect(target.countData.count, 0);
    expect(target.countData.countUp, 0);
    expect(target.countData.countDown, 0);
  });
}
