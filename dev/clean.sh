#!/bin/sh

# flutter プロジェクト内の一時ファイルを整理します
# build/ や .dart_tool/ の削除を実行します

# 実行場所変更
cd `dirname $0` # このスクリプトが配置されているディレクトリに移動
cd ../riverpod_sample # Flutter プロジェクトに移動

# flutter の clean コマンド
flutter clean
