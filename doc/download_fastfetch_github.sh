#!/bin/sh

# 设置变量
URL="https://github.com/VincentZyu233/fastfetch_ForMiWifiRouter3G/releases/download/local-build-release/fastfetch-linux-mipsel"
DEST="/usr/bin/fastfetch"

echo "正在从 GitHub 下载 Fastfetch for MT7621..."

# 下载并直接覆盖旧文件
# -q: 静默模式, -O: 指定保存路径
wget "$URL" -O "$DEST"

if [ $? -eq 0 ]; then
    echo "下载成功，正在设置运行权限..."
    chmod +x "$DEST"
    echo "安装完成！请尝试运行: fastfetch"
else
    echo "错误：下载失败，请检查网络或是否安装了 wget-ssl (opkg install wget-ssl)"
    exit 1
fi
