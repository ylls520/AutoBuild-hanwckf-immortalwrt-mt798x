#!/bin/bash

# 拷贝默认配置
cp -f defconfig/$CONFIG_FILE .config
echo 'CONFIG_TARGET_DEVICE_mediatek_mt7986_DEVICE_jdcloud_re-cp-03=y' > .config
echo 'CONFIG_TARGET_DEVICE_PACKAGES_mediatek_mt7986_DEVICE_jdcloud_re-cp-03=""' > .config

# 添加自定义配置
cat $GITHUB_WORKSPACE/config/kmod_config >> .config
cat $GITHUB_WORKSPACE/config/luci_config >> .config
