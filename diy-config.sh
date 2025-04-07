#!/bin/bash

# 拷贝默认配置
cp -f defconfig/$CONFIG_FILE .config

# 添加自定义配置
cat $GITHUB_WORKSPACE/config/kmod_config >> .config
cat $GITHUB_WORKSPACE/config/luci_config >> .config
