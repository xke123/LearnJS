# LearnJS

**学习主线：《现代 JavaScript 教程中文版》原版完整副本。**

你按教材原有目录系统阅读文章、完成练习；只有遇到不理解的知识点时，才使用 `deep-learn` Skill 在独立练习区针对性学习。**没有自动续学或第二套课程体系。**

## 1. 获取教材副本

在 Mac 终端执行：

```bash
git clone https://github.com/xke123/LearnJS.git
cd LearnJS
bash scripts/sync-resources.sh textbook
```

已经克隆过 LearnJS 的话，先 `git pull`，然后运行同步脚本。

这会下载《现代 JavaScript 教程中文版》的**完整工作树**到：

```text
resources/CN/repos/zh.javascript.info/
```

教材副本在本地，不会被提交到 LearnJS 仓库（见 `.gitignore`）。再次执行脚本可以更新教材。

## 2. 系统学习

在 Antigravity IDE 中打开 LearnJS，浏览 `resources/CN/repos/zh.javascript.info/`，按照教程原有编号目录顺序阅读 `article.md`，独立完成 `task.md`；做题前不要查看 `solution.md`。

## 3. 难点专项练习

遇到难点时在聊天中输入：

> 使用 deep-learn Skill，针对我正在阅读的这段 JavaScript 教材内容深入练习。一次只出一道题，不要提前给答案。

Skill 的练习代码、笔记和错题放在 `learning/javascript/deep-dives/<topic>/`，不改动教材。专题结束后自行回到教材原位置。

## 结构

- `resources/CN/repos/zh.javascript.info/`：中文主教材完整本地副本
- `.agents/skills/deep-learn/SKILL.md`：按需调用的专题导师
- `learning/javascript/deep-dives/`：独立代码练习
- `AGENTS.md`：学习规则
- `scripts/sync-resources.sh`：下载和更新教材

教材版权与许可属于原作者及贡献者，使用时遵守上游许可。
