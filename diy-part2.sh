#!/bin/bash

#添加自定义配置
cat $GITHUB_WORKSPACE/config/kmod_config >> .config
cat $GITHUB_WORKSPACE/config/luci_config >> .config
