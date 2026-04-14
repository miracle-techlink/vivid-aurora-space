---
title: '机械臂仿真引擎 — 同济×西门子工业 4.0 实验室'
summary: '用基于 DQN 的强化学习取代粒子群优化，实现机械臂轨迹控制，配套 Three.js 三维可视化。与西门子联合项目。'
tags:
  - Robotics
  - Reinforcement Learning
  - Simulation
date: '2024-02-01T00:00:00Z'
external_link: ''
image:
  caption: 'Three.js 实时机械臂可视化，滑动条参数控制'
  focal_point: Smart
links:
  - icon: brands/bilibili
    url: https://www.bilibili.com/video/BV1FTnDzVEzA/
    name: Demo Video
---

{{< link-card url="https://www.bilibili.com/video/BV1FTnDzVEzA/" title="引擎演示视频 · Bilibili" desc="Three.js 机械臂仿真引擎实时演示" >}}

{{< figure src="featured.png" caption="Three.js 实时机械臂可视化 — 调节滑动条旋转参数，模型相应变化。" >}}

---

同济大学中德工业 4.0 实验室与西门子联合研究项目，用深度强化学习替代传统粒子群优化（PSO），实现更高精度的机械臂控制。

**技术工作：**
- **DQN 智能体** 用于关节轨迹优化，替代 PSO 基线
- **Three.js 3D 可视化** — 滑动条交互式参数控制，实时模型更新，支持导入工业设备场景
- **SITP 项目结项认证** 已完成

**关键洞察：** 接触 NVIDIA Isaac Sim 后，识别到核心需求并非模型导入/可视化，而是自定义算法接口与 GPU 加速物理仿真 — 据此调整了研究方向。

**归属：** 同济大学中德工业 4.0 实验室 × 西门子 | 2023.11 – 2024.02
