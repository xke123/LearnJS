# LearnJS

以 **《现代 JavaScript 教程中文版》** 为主课程，直接按原教材章节系统学习。遇到不懂的地方，手动调用 `deep-learn` Skill，在独立练习区进行针对性训练。

## 目录

```text
LearnJS/
├── Course/
│   ├── README.md
│   └── modern-javascript/          # 中文教程完整本地副本（运行脚本后出现）
├── resources/                      # 补充资源，保留原状
│   ├── CN/
│   └── EN/
├── learning/javascript/deep-dives/ # 按需创建的练习区
├── .agents/skills/deep-learn/SKILL.md
├── AGENTS.md
└── scripts/sync-resources.sh
```

## 获取主课程

在已克隆的 LearnJS 根目录执行：

```bash
git pull
bash scripts/sync-resources.sh course
```

首次获取仓库：`git clone https://github.com/xke123/LearnJS.git`，然后 `cd LearnJS` 执行脚本。

课程下载到 `Course/modern-javascript/`，是上游教程的完整文件工作树（浅克隆只限制 Git 历史），不是摘要。再次运行脚本可更新。课程副本被 Git 忽略，不随 LearnJS 仓库提交；`resources/` 仍是独立补充资料目录。

## 学习规则

1. 在 Antigravity IDE 中打开 `Course/modern-javascript/`，按照教程原有章节顺序阅读 `article.md`、完成 `task.md`，做题前不查看 `solution.md`。
2. 遇到困难时说：「使用 deep-learn Skill，针对当前知识点逐题练习，不要直接给答案。」
3. 练习文件放在 `learning/javascript/deep-dives/<topic>/`，不修改教材。
4. 不使用「继续学习」、自动续课或额外课程路线。

原教程： https://github.com/javascript-tutorial/zh.javascript.info 。使用教材时遵守上游许可证。
