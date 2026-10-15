#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:-textbook}"
clone() {
  local dest="$1" url="$2"
  if [[ -d "$dest/.git" ]]; then
    echo "已存在，更新教材：$dest"
    git -C "$dest" pull --ff-only
  elif [[ -e "$dest" ]]; then
    echo "目标路径已存在但不是 Git 仓库：$dest" >&2
    return 1
  else
    mkdir -p "$(dirname "$dest")"
    git clone --depth 1 "$url" "$dest"
  fi
}
case "$MODE" in
  textbook|cn|all)
    clone "$ROOT/resources/CN/repos/zh.javascript.info" "https://github.com/javascript-tutorial/zh.javascript.info.git"
    ;;
  en)
    echo "英文资料按需手动获取；默认只同步中文主教材。"
    ;;
  *)
    echo "用法：bash scripts/sync-resources.sh [textbook|cn|all|en]" >&2
    exit 2
    ;;
esac
echo "教材已准备好：resources/CN/repos/zh.javascript.info/"
