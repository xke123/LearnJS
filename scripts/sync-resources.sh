#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MODE="${1:-cn}"
clone() { local dest="$1" url="$2"; if [[ -d "$dest/.git" ]]; then echo "跳过已存在：$dest"; else mkdir -p "$(dirname "$dest")"; git clone --depth 1 "$url" "$dest"; fi; }
if [[ "$MODE" == cn || "$MODE" == all ]]; then
 clone "$ROOT/resources/CN/repos/zh.javascript.info" https://github.com/javascript-tutorial/zh.javascript.info.git
 clone "$ROOT/resources/CN/repos/33-js-concepts" https://github.com/stephentian/33-js-concepts.git
 clone "$ROOT/resources/CN/repos/es6tutorial" https://github.com/ruanyf/es6tutorial.git
 clone "$ROOT/resources/CN/repos/JavaScript30" https://github.com/soyaine/JavaScript30.git
fi
if [[ "$MODE" == en || "$MODE" == all ]]; then
 clone "$ROOT/resources/EN/repos/curriculum" https://github.com/TheOdinProject/curriculum.git
 clone "$ROOT/resources/EN/repos/javascript-exercises" https://github.com/TheOdinProject/javascript-exercises.git
 clone "$ROOT/resources/EN/repos/You-Dont-Know-JS" https://github.com/getify/You-Dont-Know-JS.git
 clone "$ROOT/resources/EN/repos/30-Days-Of-JavaScript" https://github.com/Asabeneh/30-Days-Of-JavaScript.git
fi
echo "资源同步完成。"
