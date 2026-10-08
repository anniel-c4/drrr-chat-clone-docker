#!/bin/bash


# 再起動
APP_ENV=group_a docker compose down
APP_ENV=group_a docker compose up -d

# ログ確認（エラーが止まり Bootstrapped 100% になれば成功）
docker compose logs -f tor