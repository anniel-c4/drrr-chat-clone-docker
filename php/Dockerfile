FROM php:7.4-fpm-alpine

# 必要な拡張のインストール
RUN docker-php-ext-install mbstring || true

# 権限調整用の設定
WORKDIR /var/www/html