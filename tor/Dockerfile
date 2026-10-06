FROM alpine:latest

# Tor のインストール
RUN apk add --no-cache tor su-exec

# ディレクトリの作成と権限設定
RUN mkdir -p /var/lib/tor/mywebsite && \
    chmod 700 /var/lib/tor/mywebsite && \
    chown -R tor:tor /var/lib/tor

# 設定ファイルとエントリーポイントのコピー
COPY torrc /etc/tor/torrc
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

# エントリーポイント経由で安全に起動
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["tor", "-f", "/etc/tor/torrc"]