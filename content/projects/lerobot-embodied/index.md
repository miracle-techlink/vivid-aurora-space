---
title: 'LeRobot Embodied Intelligence Framework — Study & Deployment'
summary: Hands-on study, deployment, and documentation of Hugging Face LeRobot framework for embodied AI. Co-authored community wiki covering architecture, training pipelines, and real-robot deployment.
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
    name: Documentation
    url: https://zihao-ai.feishu.cn/wiki/TS6swApHbinx01kHDi5cf5n5n8c
  - icon: github
    icon_pack: fab
    name: GitHub
    url: https://github.com/miracle-techlink
---

Deep dive into **Hugging Face LeRobot** — the leading open-source embodied intelligence framework — covering architecture analysis, training pipeline reproduction, and real-robot deployment.

**Study scope:**
- ACT (Action Chunking with Transformers) policy architecture
- Diffusion Policy training and inference pipeline
- TDMPC world-model-based control
- Real-robot deployment on SO-100 / Koch v1.1 hardware

**Contributions:**
- Co-authored comprehensive Chinese-language community documentation (Feishu Wiki)
- Practical deployment notes for servo-actuated robot arms
- Hardware assembly and calibration guides

**Connection to research:**
LeRobot's flow-matching policy backbone directly informed the GDN-Memory integration work — understanding the inference pipeline was prerequisite to designing sub-1ms memory update scheduling that does not block action generation.
