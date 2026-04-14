---
title: 'GDN-Memory：具身世界模型的恒定占用联想记忆系统'

authors:
  - admin

date: '2026-04-01T00:00:00Z'
publishDate: '2026-04-01T00:00:00Z'

publication_types: ['paper-conference']

publication: '*ICRA / CoRL 2026*（准备投稿中）'
publication_short: '*ICRA/CoRL 2026*'

abstract: >
  长时域机器人操作要求智能体在片段间持续积累与更新知识，同时避免记忆无限增长。
  我们提出一种三层分层记忆系统，集成于 Slow-Fast 视频世界模型（Genie Envisioner）中，
  无论片段长度如何，记忆占用恒定维持在 256 KB。
  第一层（物理记忆）在 2B 参数视频世界模型的每个 DiT 块内插入 Gated DeltaNet（GDN）TTT 层，
  位于交叉注意力之后、FFN 之前，共享快权重矩阵 W ∈ ℝ^{64×64}，以 5 Hz 慢路径节拍更新。
  第二/三层（物体记忆与行为记忆）挂载于慢路径外部，
  利用 CLIP/DINO 视觉潜变量通过在线 GDN 写操作更新每物体 W_obj 与每人员 W_person 联想矩阵。
  记忆 token 经交叉注意力注入动作 DiT（160M，30 Hz），闭合感知-动作回路。
  通过合成数据到真实嵌入的分阶段验证协议，我们验证了核心假设：
  d=256 时的 d×d GDN 矩阵可存储 >100 组物体-位置关联，余弦检索精度 >85%，
  在 20% 位置扰动后可在 3 次重观测内恢复。
  完整系统通过 SRAM 快权重计算、3D RoPE 空间编码与双 CUDA 流调度在设备端运行，
  记忆更新延迟 <1ms，不阻塞 30 Hz 动作生成路径。

summary: >
  基于 Gated DeltaNet 快权重构建的三层（物理/物体/行为）恒定占用记忆系统，
  集成于 Genie Envisioner 的 Slow-Fast 推理流水线。总占用 256 KB，更新延迟 <1ms，联想检索精度 >85%。

tags:
  - Embodied AI
  - Vision-Language-Action
  - World Models
  - Memory Systems
  - Test-Time Training

featured: true

links:
  - name: Code
    url: 'https://github.com/miracle-techlink'

image:
  focal_point: 'Center'
  preview_only: false

projects: []
slides: ""
---
