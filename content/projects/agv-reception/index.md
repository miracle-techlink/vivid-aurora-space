---
title: 'AGV Reception & Inspection Robot — Tongji Deployment'
summary: Participated in R&D of an AGV-based smart reception and inspection robot deployed at Tongji University. Responsible for voice module localization for Middle East clients (Arabic NLP pipeline).
tags:
  - Robotics
  - Hardware
  - Computer Vision
date: '2024-05-01T00:00:00Z'
external_link: ''
image:
  caption: 'Reception robot deployed in Tongji Exhibition Hall; inspection robot in teaching building'
  focal_point: Smart
links: []
---

Participated in the R&D of an intelligent AGV robot platform deployed across Tongji University's exhibition hall and teaching buildings. The system integrates two robot roles — **reception (迎宾)** and **inspection (巡检)** — on a shared AGV chassis with a modular AI brain architecture.

**My contribution:** Led the **voice module localization for Middle East clients** — adapting the NLP pipeline for Arabic speech recognition, TTS, and interaction flows to support overseas commercial deployment.

---

### Deployment

{{< figure src="featured.jpg" caption="Left: Reception robot in Tongji University Exhibition Hall. Right: Inspection robot in Tongji teaching building." >}}

---

### System Architecture

{{< figure src="arch.png" caption="Dual-brain architecture: AI大脑 (data analysis / model inference / HRI) + AGV大脑 (autonomous navigation controller) on a unified AGV platform." >}}

The robot uses a **dual-brain architecture**:
- **AI 大脑** — handles 数据分析, 模型推理, 人机交互 (vision, NLP, multimodal interaction)
- **AGV 大脑** — autonomous navigation controller (SLAM, path planning, motor control)

---

### Hardware Specs

{{< figure src="hardware.png" caption="Hardware: T1 industrial LiDAR, SONY 4G i640 compute unit, 60W×2 brushless drive motors, 24V/16Ah battery pack." >}}

| Module | Spec |
|---|---|
| LiDAR | 单线激光雷达，180° FOV，测距精度 0.1° |
| Compute | SONY 4G i640，Ubuntu 16.04 |
| Drive | 橡胶车轮，60W×2 无刷电机，最高速 0.5m/s |
| Battery | 18650锂电，24V/16Ah，续航 2h |

---

### Perception Capabilities

{{< figure src="sensors.png" caption="人员监测（人脸/穿戴/姿态/行为识别）× 环境监测（温湿度/烟雾/火警）" >}}

**人员监测：**
- 人脸识别与比对
- 穿戴识别（衣物、着装规范）
- 姿态检测（人体骨骼关键点）
- 行为识别（吸烟检测、摔倒预警）

**环境监测：**
- 温湿度检测（区域/物体温度）
- 烟雾报警（有害气体 + 烟雾检测）
- 火警预警（融合温度、热图、烟雾多源判断）

---

### Face Recognition & Edge AI

{{< figure src="face.png" caption="人脸识别 + 红外测温实时上传，支持二次开发与定制化功能扩展。" >}}

- 人脸识别 + 红外测温数据实时上传
- 考勤数据大屏可视化
- 支持二次开发，可为客户定制化功能模块（含中东客户阿拉伯语语音交互落地）
