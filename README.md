# LearnJS · AI 互动式 JavaScript 学习系统

中文优先｜单知识体系｜逐题互动｜原理→变式→陷阱→编码→生产场景。

## 使用
1. 克隆本仓库，在 Antigravity IDE 中打开。
2. 输入：**使用 deep-learn Skill，开始学习 JavaScript 的 this**。
3. 每次只答一道题。AI 检查「结果 + 推理」，记录错因后决定是否提高难度。
4. 下次输入「继续学习」，从 `progress/javascript.json` 恢复。

## 结构
- `AGENTS.md`：通用 Agent 约束（Codex 也可读取）
- `.agents/skills/deep-learn/SKILL.md`：Antigravity 学习 Skill
- `curriculum/javascript/`：课程路线及专题
- `progress/javascript.json`：持久化进度
- `exercises/javascript/`：可执行练习
- `resources/CN/`：中文教材资源（优先）
- `resources/EN/`：英文教材资源（补充）
- `scripts/sync-resources.sh`：按需拉取第三方课程（不纳入本仓库版本控制）

## 常用指令
「学习 JavaScript」「学习 this」「继续学习」「给我一道变式题」「解释我的错误」「阶段考核」「查看进度」。

## 原则
AI 是导师，不是代写工具。禁止未经允许直接给答案、改用户代码、跳转 Vue/React/TypeScript。只在当前 JS 主题内部纵向深入。

运行示例测试：`node --test exercises/javascript/*.test.mjs`（建议 Node.js 20+）。

资源版权归各原作者，资源目录只提供链接和克隆脚本。
