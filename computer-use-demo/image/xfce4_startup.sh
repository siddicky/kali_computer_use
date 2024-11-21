#!/bin/bash

# 環境変数の設定
export DISPLAY=:1
export XDG_RUNTIME_DIR=/tmp/runtime-computeruse

# XDG_RUNTIME_DIR のディレクトリを作成（必要であれば）
if [ ! -d "$XDG_RUNTIME_DIR" ]; then
    mkdir -p "$XDG_RUNTIME_DIR"
    chmod 700 "$XDG_RUNTIME_DIR"
fi

# 古いプロセスの終了
echo "Stopping any existing XFCE4 processes..."
pkill -f startxfce4

# XFCE4 デスクトップ環境の起動
echo "Starting XFCE4 desktop environment..."
startxfce4 > /tmp/xfce4.log 2>&1 &

# 起動確認
echo "XFCE4 should now be running. Logs are available in /tmp/xfce4.log."
