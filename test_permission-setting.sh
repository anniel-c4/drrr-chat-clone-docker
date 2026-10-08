#!/bin/bash

# 所有者を現在のユーザー(annie)に揃える
sudo chown -R $USER:$USER ~/work/drrr-chat-clone-docker/tor_keys

# パーミッションを 700 に固定する
sudo chmod -R 700 ~/work/drrr-chat-clone-docker/tor_keys