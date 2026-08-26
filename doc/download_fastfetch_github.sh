#!/bin/sh

# Select the newest versioned MT7621 asset from GitHub Releases.
set -eu

API_URL="https://api.github.com/repos/VincentZyu233/fastfetch_ForMiWifiRouter3G/releases/latest"
DEST="/usr/bin/fastfetch"
TMP="$(mktemp /tmp/fastfetch.XXXXXX)"
INSTALL_TMP="${DEST}.new"

trap 'rm -f "$TMP" "$INSTALL_TMP"' EXIT

echo "正在从 GitHub 下载 Fastfetch for MT7621..."

URL=$(wget -qO- "$API_URL" | sed -n 's#.*"browser_download_url": "\([^"]*fastfetch-linux-mipsel-mt7621-[^"]*\)".*#\1#p' | head -n 1)

if [ -z "$URL" ]; then
    echo "错误：未找到 MT7621 的最新发布资产。"
    exit 1
fi

wget "$URL" -O "$TMP"
chmod +x "$TMP"
cp "$TMP" "$INSTALL_TMP"
mv -f "$INSTALL_TMP" "$DEST"
trap - EXIT
rm -f "$TMP"

echo "安装完成！请尝试运行: fastfetch"
