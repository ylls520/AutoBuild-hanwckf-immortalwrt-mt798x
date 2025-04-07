#!/bin/bash

#添加自定义配置
cat $GITHUB_WORKSPACE/config/kmod_config >> .config
cat $GITHUB_WORKSPACE/config/luci_config >> .config

#删除冲突的软件包
#rm -rf ./package/istore
rm -rf ./feeds/kenzo/luci-app-quickstart
rm -rf ./feeds/kenzo/luci-app-store
rm -rf ./feeds/kenzo/luci-lib-taskd
