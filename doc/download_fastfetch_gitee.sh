#!/bin/sh

# GitHub Actions publishes the versioned release assets.
API_URL="https://api.github.com/repos/VincentZyu233/fastfetch_ForMiWifiRouter3G/releases/latest"
DEST="/usr/bin/fastfetch"

echo "正在从 GitHub 下载 Fastfetch for MT7621..."

URL=$(wget -qO- "$API_URL" | sed -n 's#.*"browser_download_url": "\([^"]*fastfetch-linux-mipsel-mt7621-[^"]*\)".*#\1#p' | head -n 1)

if [ -z "$URL" ]; then
    echo "错误：未找到 MT7621 的最新发布资产。"
    exit 1
fi

wget "$URL" -O "$DEST"

if [ $? -eq 0 ]; then
    echo "下载成功，正在设置运行权限..."
    chmod +x "$DEST"
    echo "安装完成！请尝试运行: fastfetch"
else
    echo "错误：下载失败，请检查网络或是否安装了 wget-ssl (opkg install wget-ssl)。"
    exit 1
fi
