# 中文教材

## 唯一默认主教材：《现代 JavaScript 教程中文版》

源仓库：https://github.com/javascript-tutorial/zh.javascript.info

在 LearnJS 项目根目录运行：

```bash
bash scripts/sync-resources.sh textbook
```

该命令会在 `resources/CN/repos/zh.javascript.info/` 创建**完整的工作树副本**（包含原教材文章、任务、答案及图片等），并在以后执行时快进更新。为节省磁盘，默认只克隆最近一次历史（`--depth 1`）；教材文件内容不是节选。

目录下的 `index.md` 是章节，`article.md` 是文章，`task.md` 是练习，`solution.md` 是参考答案。请按原教材的编号目录学习；不要直接修改教材副本。遇到难点，按需启动 `deep-learn` Skill，并在 `learning/javascript/deep-dives/` 中练习。

注意：`resources/CN/repos/` 被 Git 忽略，因此该教材副本保存在**本地工作区**，不会随着 LearnJS 的 GitHub 提交上传。换一台设备重新执行上述命令即可。

许可和署名遵循上游项目的 LICENSE。
