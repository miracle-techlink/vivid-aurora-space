---
title: 'Medical AI Consultation Platform'
summary: Multimodal medical LLM platform with CT/MRI image-text alignment, domain-expert routing, medication assistance, and visual report OCR — built end-to-end from model training to cloud deployment.
tags:
  - Medical AI
  - LLM
  - Full-Stack
date: '2025-08-01T00:00:00Z'
external_link: ''
image:
  caption: '智慧医疗AI平台 — full-stack consultation and diagnosis assistance'
  focal_point: Smart
links: []
---

An end-to-end medical AI platform developed from Oct 2024 to Aug 2025, covering both model training and product deployment.

**Part 1 — Multimodal Medical LLM:**
- Three-stage fine-tuning: Medical Alignment → Instruction Tuning & Routing → Domain Expert Routing
- Image-text cross-attention alignment for CT/MRI images and medical text
- MoE-style routing: directs tasks to specialized expert modules (radiology, clinical text, etc.)
- Architecture reference: EMNLP 2024 routing framework

**Part 2 — Cloud Platform:**
- Coze multi-agent workflow for medication assistance and health check-in
- Visual imaging analysis + report OCR pipeline
- Web frontend: symptom analysis, drug recommendation, health knowledge base
- Deployed and validated with real hospital feedback

**Reflection:** Identified product-market fit issues early — physician trust barriers and unclear monetization in B2B healthcare remain the core challenge for medical AI products.

**Stack:** PyTorch · Transformers · Coze · Vue · Cloud deployment
