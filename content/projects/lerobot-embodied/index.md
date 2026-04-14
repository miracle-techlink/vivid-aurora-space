---
title: 'LeRobot & Embodied AI Hackathon Projects'
summary: Hands-on study and deployment of Hugging Face LeRobot (HuggingFace-officially featured docs), plus tri.me — a home-care robot platform that won 3rd place at the 小红书巅峰赛 hackathon.
tags:
  - Embodied AI
  - VLA
  - Open Source
  - Robot Learning
date: '2025-10-01T00:00:00Z'
external_link: ''
image:
  caption: 'LeRobot hardware — servo-actuated robot arm platform'
  focal_point: Smart
links:
  - icon: book
    icon_pack: fas
    name: LeRobot Docs
    url: https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c
  - icon: github
    icon_pack: fab
    name: tri.me GitHub
    url: https://github.com/persuer0/treame
---

{{< video src="demo.mp4" controls="yes" >}}

---

## LeRobot — Study & Deployment

Deep dive into **Hugging Face LeRobot** — the leading open-source embodied intelligence framework — covering architecture analysis, training pipeline reproduction, and real-robot deployment.

**Study scope:**
- ACT (Action Chunking with Transformers) policy architecture
- Diffusion Policy training and inference pipeline
- TDMPC world-model-based control
- Real-robot deployment on SO-100 / Koch v1.1 hardware

> 📖 Co-authored comprehensive Chinese-language documentation. **Officially featured by Hugging Face.**

{{< link-card url="https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c" title="LeRobot 中文社区文档" desc="架构解析 · 训练流程 · 真机部署 · HuggingFace 官方收录" >}}

**Connection to research:**
LeRobot's flow-matching policy backbone directly informed the GDN-Memory integration work — understanding the inference pipeline was prerequisite to designing sub-1ms memory update scheduling.

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
