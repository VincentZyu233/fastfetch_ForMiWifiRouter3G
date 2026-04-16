# Fastfetch for MiWiFi R3G (MT7621)

> 本仓库是fastfetch的fork捏，给**小米路由器 R3G (MIPS MT7621)**.设备提供预编译二进制捏
>
> **关键点:**
> * 🚀 **自动构建:** 使用 GitHub Actions.
> * 📦 **预构建二进制:** 可以直接在[Releases](../../releases) 里面下载捏.

## 快速一键安装
```bash
# 从 github 安装
wget -O - https://github.com/VincentZyu233/fastfetch_ForMiWifiRouter3G/raw/dev/doc/download_fastfetch_github.sh | sh
# 从 gitee 安装
wget -O - https://gitee.com/vincent-zyu/fastfetch_ForMiWifiRouter3G/raw/dev/doc/download_fastfetch_gitee.sh | sh
```

![小米路由器R3G Fastfetch 运行效果](doc/fastfetch-mips-MT7621-小米路由器R3G.png)

[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/fastfetch-cli/fastfetch/ci.yml)](https://github.com/fastfetch-cli/fastfetch/actions)
[![GitHub license](https://img.shields.io/github/license/fastfetch-cli/fastfetch)](https://github.com/fastfetch-cli/fastfetch/blob/dev/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/fastfetch-cli/fastfetch)](https://github.com/fastfetch-cli/fastfetch/graphs/contributors)
[![GitHub top language](https://img.shields.io/github/languages/top/fastfetch-cli/fastfetch?logo=c&label=)](https://github.com/fastfetch-cli/fastfetch/blob/dev/CMakeLists.txt#L5)
[![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/m/fastfetch-cli/fastfetch)](https://github.com/fastfetch-cli/fastfetch/commits)  
[![homebrew downloads](https://img.shields.io/homebrew/installs/dm/fastfetch?logo=homebrew)](https://formulae.brew.sh/formula/fastfetch#default)
[![GitHub all releases](https://img.shields.io/github/downloads/fastfetch-cli/fastfetch/total?logo=github)](https://github.com/fastfetch-cli/fastfetch/releases)  
[![GitHub release (with filter)](https://img.shields.io/github/v/release/fastfetch-cli/fastfetch?logo=github)](https://github.com/fastfetch-cli/fastfetch/releases)
[![latest packaged version(s)](https://repology.org/badge/latest-versions/fastfetch.svg)](https://repology.org/project/fastfetch/versions)
[![Packaging status](https://repology.org/badge/tiny-repos/fastfetch.svg)](https://repology.org/project/fastfetch/versions)
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/fastfetch-cli/fastfetch)
[![中文README](https://img.shields.io/badge/%E4%B8%AD%E6%96%87-README-red)](README-cn.md)

Fastfetch 是一款类似 neofetch 的系统信息展示工具，主要用 C 编写，强调性能和可定制性。支持 Linux、macOS、Windows 7+、Android、FreeBSD、OpenBSD、NetBSD、DragonFly、Haiku、SunOS。

示例配置见 presets/examples，更多截图与平台说明见 Wiki。

## 安装

Linux（部分）：
- Debian 13+ / Ubuntu: apt install fastfetch
- Arch: pacman -S fastfetch
- Fedora: dnf install fastfetch
- openSUSE: zypper install fastfetch
- Linuxbrew：brew install fastfetch
- 各发行版打包状态：https://repology.org/project/fastfetch/versions

macOS：
- Homebrew：brew install fastfetch
- MacPorts：sudo port install fastfetch

Windows：
- scoop install fastfetch
- choco install fastfetch
- winget install fastfetch
- MSYS2：pacman -S mingw-w64-<subsystem>-<arch>-fastfetch

BSD：
- FreeBSD：pkg install fastfetch
- NetBSD：pkgin in fastfetch
- OpenBSD：pkg_add fastfetch

Android（Termux）：
- pkg install fastfetch

Nightly 构建：
- https://nightly.link/fastfetch-cli/fastfetch/workflows/ci/dev?preview

## 源码构建

基本上是 `cmake . && make`。详见 Wiki：https://github.com/fastfetch-cli/fastfetch/wiki/Building

## 使用

- 默认运行：`fastfetch`
- 查看所有可用模块示例：`fastfetch -c all.jsonc`
- 以 JSON 输出指定模块：`fastfetch -s <module1>[:<module2>] --format json`
- 完整命令行帮助：`fastfetch --help`
- 生成最小配置：`fastfetch --gen-config [</path/to/config.jsonc>]`
  - 生成完整配置：`fastfetch --gen-config-full`
  - 请使用支持 JSON schema 的编辑器（如 VSCode）编辑配置文件！
  - 如果你连接 Github 有网络困难（智能提示不生效），可将配置文件中的 `$schema` 的值替换为 `https://gitee.com/carterl/fastfetch/raw/dev/doc/json_schema.json`

## 定制

- 配置使用 JSONC，语法与选项见 Wiki：https://github.com/fastfetch-cli/fastfetch/wiki/Configuration
- 预设示例位于 presets，可用 `-c <filename>` 加载
- Logo 选项与图像显示见文档：https://github.com/fastfetch-cli/fastfetch/wiki/Logo-options
- 模块格式化（示例，仅显示 GPU 名称）：
```jsonc
{
  "modules": [
    { "type": "gpu", "format": "{name}" }
  ]
}
```
详见：https://github.com/fastfetch-cli/fastfetch/wiki/Format-String-Guide

## 反馈与支持

- 使用问题：Discussions https://github.com/fastfetch-cli/fastfetch/discussions
- 疑似缺陷：Issues https://github.com/fastfetch-cli/fastfetch/issues（请填写模版）

## 赞助

<img src="https://github.com/user-attachments/assets/a36a6501-e8b0-4a10-9061-b9206d12ffba" width="220">
