FROM php:7.4-fpm-alpine

# 必要な拡張のインストール
RUN docker-php-ext-install mbstring || true
# php.ini に opcache.enable=0 を追加して無効化
RUN echo "opcache.enable=0" >> /usr/local/etc/php/conf.d/docker-php-ext-opcache.ini
# OPcache 拡張のインストール（標準イメージに含まれていない場合）
RUN docker-php-ext-install opcache

# 開発用設定を ini ファイルに書き出す
RUN { \
    echo 'opcache.enable=1'; \
    echo 'opcache.validate_timestamps=1'; \
    echo 'opcache.revalidate_freq=0'; \
    echo 'opcache.memory_consumption=128'; \
    echo 'opcache.interned_strings_buffer=8'; \
    echo 'opcache.max_accelerated_files=4000'; \
} > /usr/local/etc/php/conf.d/opcache-recommended.ini
# 権限調整用の設定
WORKDIR /var/www/html

# ディレクトリを作成し、所有権を設定
RUN mkdir -p /var/www/html/drrr-like-chat/trust_path/xml \
    && chown -R www-data:www-data /var/www/html/drrr-like-chat/trust_path/xml \
    && chmod -R 775 /var/www/html/drrr-like-chat/trust_path/xml