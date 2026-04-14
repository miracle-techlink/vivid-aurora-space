---
title: '智能小车设计 — 省赛银奖（队长）'
summary: 担任队长，带队从零设计凸轮转向智能小车——SolidWorks 机械设计、MATLAB 轨迹仿真、自制充电电路，荣获省赛银奖。
tags:
  - Robotics
  - Hardware
  - Mechanical Design
date: '2023-06-01T00:00:00Z'
external_link: ''
image:
  caption: 'SolidWorks 详细渲染 — 凸轮转向机构、传动齿轮、车轮与摄像头支架'
  focal_point: Smart
links: []
---

担任队长，带队设计并制造一辆凸轮转向自主智能小车，参加省级竞赛。项目覆盖机械设计、轨迹仿真到硬件实现的全流程。

**职责：** 队长 — 负责整体机械架构、转向系统设计、轨迹建模与电路设计。

---

### 机械设计

{{< figure src="cad_v1.png" caption="初版 CAD 概念模型 — 底盘布局与车轮配置初稿。" >}}

{{< figure src="featured.png" caption="SolidWorks 最终详细渲染 — 凸轮转向机构、减速齿轮、驱动车轮与摄像头支架。" >}}

转向系统采用**凸轮机构**，将旋转运动转化为精确的横向位移，无需舵机，提升机械可靠性。传动部分采用减速齿轮级配合有刷直流电机。

---

### 轨迹仿真

{{< figure src="simulation.jpeg" caption="MATLAB 轨迹仿真 — 左：完整路径轨迹（单位 mm）；右上：车辆转角随位移变化；右下：凸轮曲线轮廓。" >}}

基于凸轮轮廓建立 MATLAB 仿真模型，验证车辆行驶轨迹。核心输出：
- **路径轨迹** — 验证小车沿预定曲线行驶
- **转角曲线** — 确保转向输入平滑连续
- **凸轮轮廓** — 设计目标：最小加速度冲击、稳定接触力

---

### 充电电路

{{< figure src="circuit.png" caption="自制充电电路原理图 — 含电池管理，保障比赛期间稳定供电。" >}}

---

**奖项：** 省级智能小车竞赛银奖 | 队长
**技术栈：** SolidWorks · MATLAB · PCB 设计 · 直流电机控制
