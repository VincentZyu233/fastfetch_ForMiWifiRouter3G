#!/bin/sh

# 设置变量
URL="https://gitee.com/vincent-zyu/fastfetch_ForMiWifiRouter3G/releases/download/local-build-release/fastfetch-linux-mipsel"
DEST="/usr/bin/fastfetch"

echo "正在从 Gitee 下载 Fastfetch for MT7621..."

wget "$URL" -O "$DEST"

if [ $? -eq 0 ]; then
    echo "下载成功，正在设置运行权限..."
    chmod +x "$DEST"
    echo "安装完成！请尝试运行: fastfetch"
else
    echo "错误：下载失败，请检查 Gitee 链接是否有效。"
    exit 1
fi
