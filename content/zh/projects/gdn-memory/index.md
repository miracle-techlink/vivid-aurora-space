---
title: 'GDN-Memory: Constant-Footprint Embodied Memory for World Models'
summary: Gated DeltaNet hierarchical memory integrated into Genie Envisioner's Slow-Fast VLA pipeline. 256KB constant footprint, <1ms update latency, targeting ICRA/CoRL 2026.
tags:
  - Embodied AI
  - VLA
  - World Models
  - Research
date: '2026-04-01T00:00:00Z'
external_link: ''
image:
  caption: '三层记忆系统集成于 GE Slow-Fast 流水线'
  focal_point: Smart
links:
  - icon: github
    icon_pack: fab
    name: Code
    url: https://github.com/miracle-techlink
  - icon: brands/bilibili
    name: Demo
    url: https://www.bilibili.com/video/BV1kSA3zbEXQ/
---

{{< link-card url="https://github.com/miracle-techlink" title="miracle-techlink / GitHub" desc="GDN-Memory 代码仓库（即将开源）" >}}

{{< link-card url="https://www.bilibili.com/video/BV1kSA3zbEXQ/" title="GDN-Memory Demo · Bilibili" desc="具身记忆系统演示视频" >}}

基于 **Gated DeltaNet（GDN）** 快权重矩阵构建的具身智能体三层分层记忆系统，集成于 Genie Envisioner Slow-Fast VLA 架构。

**架构设计：**
- **第一层（物理层）** — TTT 层嵌入 GE-Base（2B）的 28 个 DiT 块中，插于交叉注意力之后、FFN 之前。共享权重矩阵 W ∈ ℝ^{64×64}，以 5 Hz 慢路径更新。
- **第二/三层（物体层/行为层）** — 位于慢路径外部。CLIP/DINO 从视觉潜变量检测物体，通过在线 GDN 更新写入 W_obj 和 W_person。记忆 token 经交叉注意力注入 GE-Act（160M，30 Hz）。

**核心特性：**
- 无论片段长度，记忆占用恒定 256 KB
- GDN 更新延迟 <1ms（SRAM 快权重计算）
- 3D RoPE 空间编码用于物体-位置绑定
- 双 CUDA 流 + 双缓冲调度

**目标投稿：** ICRA / CoRL 2026 | 归属：同济 CS × PKU DLIB × 智元机器人

---

## 演示视频

{{< bilibili BV1kSA3zbEXQ >}}

---

## 实验记录

分阶段验证：合成数据 → 真实场景 → VLA 集成 → 记忆鲁棒性 → 冷启动。

---

### 实验 A — GDN 物体记忆：合成数据验证 &nbsp; ✅ 通过

[📄 阅读报告（PDF）](/files/gdn-memory/exp_a_gdn_synthetic.pdf)

在合成数据上通过 5 个子实验验证 GDN 核心机制。

| 假设 | 结果 |
|---|---|
| H1 容量 | N≤100 时检索率 100%；N=200 时 99.2%（4.5× 安全裕度）|
| H2/H3 在线更新 | 1 次再观测后恢复率 99.8%；未移动物体干扰 0.0 pp |
| 超参数鲁棒性 | 全部 25 组（γ, η）组合 → acc=1.000 |
| 动量消融 | η_s≥0.8 有害，必须禁用 |
| 键值消融 | 随机 CLIP 键仅比正交键差 6.3 pp |

---

### 实验 B — GenieSim 真实场景验证 &nbsp; 🔜 计划中

[📄 阅读设计方案（PDF）](/files/gdn-memory/exp_b_genesim.pdf)

将 GDN 迁移至 GenieSim home_g2（13 种场景变体），在智元 G2 机器人上使用真实 CLIP ViT-L/14 特征。

| 假设 | 目标 |
|---|---|
| H1 | N≤50 个物体时 hit@1m ≥ 80% |
| H2 | 20% 物体移动后：恢复 hit@1m ≥ 75%，未移动物体退化 ≤5 pp |
| H3 | ≥10/13 场景单独通过 H1 + H2 |

---

### 实验 C — GDN + GE-Act 集成 &nbsp; 🔜 计划中

[📄 阅读设计方案（PDF）](/files/gdn-memory/exp_c_geact_integration.pdf)

通过 `attn3_hidden_states` 将 GDN 记忆 token 注入 GE-Act 的 Action DiT。仅训练约 524K 的投影层（主干冻结），在 CALVIN、LIBERO 和 ICRA26 世界模型赛道上进行基准测试。

| 假设 | 目标 |
|---|---|
| H_C1/C2 | 复现 GE-Act 基线（CALVIN Avg ≥ 4.0），标准任务退化 ≤5 pp |
| H_C3 | nDTW: 0.388 → ≥0.538（+15 pp），在 ICRA26 竞赛数据上 |
| H_C4 | 256 KB 下 GDN 达到 KV-Cache 上界的 ≥90% |

---

### 实验 D — System 2 惊奇路由 &nbsp; 🔜 计划中

[📄 阅读设计方案（PDF）](/files/gdn-memory/exp_d_surprise_routing.pdf)

测试 System 2 显式事件缓冲区（K=100 槽，100 KB），以 GDN 更新幅度作为零成本惊奇信号 — 当 50% 物体同时移位时（System 1 单独退化 20–30 pp）保护记忆。

| 假设 | 目标 |
|---|---|
| H_D1 | System 1+2 未移动记忆保留 ≥ System 1 单独 +15 pp |
| H_D2 | 缓冲区精确召回 hit@1m ≥ 95% |
| H_D3 | 惊奇值单调递减，5 次重复后 ≤初始值 30%（巩固效应）|

---

### 实验 E — System 3 持久先验 &nbsp; 🔜 计划中

[📄 阅读设计方案（PDF）](/files/gdn-memory/exp_e_persistent_prior.pdf)

测试可学习先验 token P ∈ ℝ^{32×256}（32 KB，部署时冻结），将冷启动探索步数从约 400 步缩短至约 180 步。

| 策略 | 预期收益 |
|---|---|
| A：32 个常见物体的 CLIP 文本嵌入（无需训练）| −40% steps-to-80%-hit |
| B：MAML 元学习跨场景片段 | −57% steps-to-80%-hit |
| H_E2 | 先验稳态差距在 500 步时 ≤3 pp（无长期干扰）|
