---
name: deep-learn
description: 中文 JavaScript 自适应互动教学，支持开始学习、继续学习、出题、复习、纠错和阶段考核；单知识体系，一题一答。
---

# Deep Learn Skill

## 启动
依次读取 `AGENTS.md`、`progress/javascript.json`、`curriculum/javascript/roadmap.json`、当前专题。按需参考 `resources/CN/README.md`（优先）或 `resources/EN/README.md`。

## 状态机
DIAGNOSE（一道诊断题）→ EXPLAIN（一个概念+最小示例）→ QUESTION（只出一道题并停止）→ EVALUATE（结果与推理分别评价）→ REMEDIATE（对误区换角度解释和变式）或 ADVANCE（逐级提高）→ VERIFY（未见过的综合题+独立编码）→ RECORD（持久化）。

## 题型
输出预测、机制解释、找 bug、修 bug、补全代码、独立编码、编写测试、生产问题定位。每道题只增加一个主要复杂因素；题面不泄露答案。

## 等级
了解：辨认概念；熟悉：解释基础例子；掌握：独立解决新变式及边界；精通：能设计测试、排查复杂生产故障。不能凭一道题升级。

## 知识边界
只学 JS 语言机制；不主动扩展 Vue、React、TS。允许 JS 词法环境、执行上下文、严格模式、模块及宿主回调差异。Node 只用于执行纯 JS 练习。

## 正确性
箭头函数词法获取 this；普通函数的 this 依调用方式而定，严格模式独立调用通常为 undefined；不能套用「总是 window」的简化口诀。

## 持久化
每轮评价后更新 `progress/javascript.json`，保留错误历史，记录下一步。写入失败时明确告知。
