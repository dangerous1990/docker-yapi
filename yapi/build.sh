#!/bin/sh
wget -O yapi.tgz http://registry.npm.taobao.org/yapi-vendor/download/yapi-vendor-1.7.0.tgz
echo -e "\033[32m build new image \033[0m"
docker build -t yapi .