---
title: 'LeRobot 与具身 AI 黑客松项目'
summary: 深入研究并部署 Hugging Face LeRobot（HuggingFace 官方收录文档），同时开发 tri.me 家庭护理机器人平台，荣获小红书巅峰赛黑客松三等奖。
tags:
  - Embodied AI
  - VLA
  - Open Source
  - Robot Learning
date: '2025-10-01T00:00:00Z'
external_link: ''
image:
  caption: 'LeRobot 硬件 — 舵机驱动机械臂平台'
  focal_point: Smart
links:
  - icon: book
    icon_pack: fas
    name: LeRobot 文档
    url: https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c
  - icon: github
    icon_pack: fab
    name: tri.me GitHub
    url: https://github.com/persuer0/treame
---

{{< link-card url="https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c" title="LeRobot 中文社区文档" desc="架构解析 · 训练流程 · 真机部署 · HuggingFace 官方收录" >}}

---

## LeRobot — 学习与部署

深入研究 **Hugging Face LeRobot** — 当前领先的开源具身智能框架 — 涵盖架构解析、训练流程复现与真机部署。

**学习范围：**
- ACT（Action Chunking with Transformers）策略架构
- Diffusion Policy 训练与推理流水线
- TDMPC 基于世界模型的控制
- SO-100 / Koch v1.1 硬件真机部署

> 📖 联合撰写系统性中文社区文档，**已被 Hugging Face 官方收录**。

{{< link-card url="https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c" title="LeRobot 中文社区文档" desc="架构解析 · 训练流程 · 真机部署 · HuggingFace 官方收录" >}}

**与研究的关联：**
LeRobot 的流匹配策略主干直接启发了 GDN-Memory 集成方案 — 理解推理流水线是设计亚毫秒级记忆更新调度的前提。

---

## tri.me — Home-Care Robot Platform

**🏆 3rd Place — 小红书巅峰赛 Hackathon**

{{< link-card url="http://xhslink.com/o/4WJlspLKrXM" title="tri.me 家庭护理机器人 Demo" desc="Tri.me吹了吗家庭护理机器人 · 小红书巅峰赛三等奖" >}}

{{< link-card url="https://github.com/persuer0/treame" title="persuer0/treame" desc="松灵 Nero 七自由度机械臂 · 刷牙 / 吹头发 / 剃胡子" >}}

{{< figure src="trime_scenes.png" caption="三类护理场景：刷牙 × 吹头发 × 剃胡子" >}}

| 场景 | 技术要点 |
|---|---|
| 🦷 刷牙 | 牙刷轨迹规划 × 力控清洁 |
| 💨 吹头发 | 头部跟随 × 角度自适应 |
| 🪒 剃胡子 | 面部轮廓贴合 × 微米级精度 |

{{< figure src="trime_arch.png" caption="三层解耦系统架构：感知层 / 控制层 / 执行层" >}}

**三层解耦架构：**
- **感知层** — 人体骨骼/人脸关键点实时检测，摄像头硬件加速编解码
- **控制层** — 机械臂 SDK，支持关节空间、笛卡尔、直线、圆弧多种运动模式，内置 SE3 坐标变换
- **执行层** — SocketCAN 协议驱动松灵 Nero，实现真正"以人为中心"的护理闭环
