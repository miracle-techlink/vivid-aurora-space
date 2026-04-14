---
title: '血管介入手术机器人平台（stEVE）'
summary: 血管介入端到端平台 — CTA 分割 → 3D 血管重建 → SOFA FEM 仿真 → RL 导管导航 → 双平面 DSA 术中引导。
tags:
  - Medical Robotics
  - Surgical AI
  - Simulation
  - Research
date: '2026-03-01T00:00:00Z'
external_link: ''
image:
  caption: 'stEVE: Simulated EndoVascular Environment with SOFA FEM and DSA rendering'
  focal_point: Smart
links:
  - icon: github
    icon_pack: fab
    name: Code
    url: https://github.com/miracle-techlink
  - icon: brands/rss
    name: Blog Post
    url: https://miracle-techlink.github.io/posts/20040508.html
---

{{< link-card url="https://github.com/miracle-techlink" title="miracle-techlink / GitHub" desc="stEVE 平台代码仓库" >}}

{{< link-card url="https://miracle-techlink.github.io/posts/20040508.html" title="Blog: VLA 如何落地医疗机器人" desc="miracle-techlink.github.io · 综述文章" >}}

面向 AI 辅助血管腔内介入的完整研究平台，覆盖术前三维规划至术中 RL 引导导航全流程。

**处理流程：**
1. **CTA → STL** — TotalSegmentator 血管分割，VMTK 中心线提取
2. **SOFA FEM 仿真** — Cosserat 梁导丝模型，真实血管形变仿真
3. **RL 导航** — SAC/PPO 智能体，测地距离奖励 + 安全约束
4. **双平面 DSA** — DLT 三角测量 + Beer-Lambert X 射线投影，实现 2D-3D 配准
5. **术中校正** — SE(3) IRC-RL，融合真实 DSA 反馈

**进行中研究：** 在大规模 SOFA 生成的合成数据上训练基于扩散模型的轨迹规划器，迁移至真实血管几何结构——目标是克服临床数据稀缺问题。

**归属：** 同济大学 × 北大 DLIB | 2026

---

### 系统架构

{{< figure src="eve_architecture.png" caption="stEVE 仿真流水线：血管树、介入器械、SOFA 引擎与荧光透视渲染。" >}}

### 临床导航演示

{{< figure src="demo_clinical.png" caption="患者特异性血管解剖结构中的导管导航——临床测试片段最终帧。" >}}
