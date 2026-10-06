#!/bin/sh
set -e

# ボリュームマウントされたディレクトリの所有権と権限を Tor 起動前に自動修復
chown -R tor:tor /var/lib/tor
chmod 700 /var/lib/tor/mywebsite

# tor ユーザーに切り替えてコマンドを実行
exec su-exec tor "$@"