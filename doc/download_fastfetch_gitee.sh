#!/bin/sh

# Upload this asset to the matching Gitee Release before publishing this script.
set -eu

RELEASE_TAG="mt7621-2.67.1-c1581fea"
ASSET_NAME="fastfetch-linux-mipsel-mt7621-2.67.1-c1581fea"
URL="https://gitee.com/vincent-zyu/fastfetch_ForMiWifiRouter3G/releases/download/${RELEASE_TAG}/${ASSET_NAME}"
DEST="/usr/bin/fastfetch"
TMP="$(mktemp /tmp/fastfetch.XXXXXX)"
INSTALL_TMP="${DEST}.new"

trap 'rm -f "$TMP" "$INSTALL_TMP"' EXIT

echo "正在从 Gitee 下载 Fastfetch for MT7621..."

wget "$URL" -O "$TMP"
chmod +x "$TMP"
cp "$TMP" "$INSTALL_TMP"
mv -f "$INSTALL_TMP" "$DEST"
trap - EXIT
rm -f "$TMP"

echo "安装完成！请尝试运行: fastfetch"
