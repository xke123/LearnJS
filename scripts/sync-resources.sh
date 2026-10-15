#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:-course}"
COURSE="$ROOT/Course/modern-javascript"
URL="https://github.com/javascript-tutorial/zh.javascript.info.git"

sync_course() {
  if [[ -d "$COURSE/.git" ]]; then
    echo "更新课程：$COURSE"
    git -C "$COURSE" pull --ff-only
  elif [[ -e "$COURSE" ]]; then
    echo "目标路径存在但不是 Git 仓库：$COURSE" >&2
    exit 1
  else
    mkdir -p "$(dirname "$COURSE")"
    git clone --depth 1 "$URL" "$COURSE"
  fi
}
case "$MODE" in
  course|textbook) sync_course ;;
  *) echo "用法：bash scripts/sync-resources.sh [course]" >&2; exit 2 ;;
esac
echo "主课程已准备好：Course/modern-javascript/"
