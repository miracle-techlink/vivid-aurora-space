---
title: 'MacroHard Maker — 连续碳纤维 3D 打印路径规划'
summary: 面向多轴连续碳纤维 3D 打印的应力驱动刀路规划系统，集成 FEA + 拓扑优化 + 测地路径规划，配套桌面应用与 FastAPI 后端。
tags:
  - Additive Manufacturing
  - Path Planning
  - Web App
date: '2026-02-01T00:00:00Z'
external_link: ''
image:
  caption: 'Three.js 实时三维分层预览'
  focal_point: Smart
links:
  - icon: github
    icon_pack: fab
    name: 核心后端
    url: https://github.com/miracle-techlink/macrohard-maker-core
  - icon: github
    icon_pack: fab
    name: 桌面应用
    url: https://github.com/miracle-techlink/macrohard-maker-desktop
---

**MacroHard Maker** 是面向多轴连续碳纤维（CCF）FFF 打印机的全栈刀路规划系统，将纤维铺放方向与主应力方向对齐，实现最优结构性能。

{{< link-card url="https://github.com/miracle-techlink/macrohard-maker-core" title="macrohard-maker-core" desc="Python 后端核心：FastAPI + FEA + 路径规划 + G-code 生成" >}}

{{< link-card url="https://github.com/miracle-techlink/macrohard-maker-desktop" title="macrohard-maker-desktop" desc="连续碳纤维 3D 打印路径规划桌面软件" >}}

---

**算法流水线：**
- **FEA**（scikit-fem）— 线弹性应力分析，主应力方向提取
- **SIMP 拓扑优化** — 打印方向枚举，最小化悬挑面积
- **测地路径规划** — 任意曲面上的应力对齐表面路由
- **XYA 运动规划** — 螺旋缠绕 + 填充层 G-code 生成（速度提升 16×）
- **Three.js 可视化** — 浏览器内实时逐层预览

**技术栈：** Python · FastAPI · scikit-fem · Next.js 15 · Three.js · TypeScript · Tailwind
