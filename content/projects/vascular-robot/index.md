---
title: 'Endovascular Surgical Robot Platform (stEVE)'
summary: End-to-end platform for vascular intervention — CTA segmentation → 3D vessel reconstruction → SOFA FEM simulation → RL catheter navigation → biplane DSA intraoperative guidance.
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

A complete research platform for AI-assisted endovascular intervention, spanning preoperative 3D planning through intraoperative RL-guided navigation.

**Pipeline:**
1. **CTA → STL** — TotalSegmentator vessel segmentation, VMTK centerline extraction
2. **SOFA FEM Simulation** — Cosserat beam guidewire model, realistic vascular deformation
3. **RL Navigation** — SAC/PPO agents with geodesic distance reward + safety constraints
4. **Biplane DSA** — DLT triangulation + Beer-Lambert X-ray projection for 2D-3D registration
5. **Intraoperative Correction** — SE(3) IRC-RL with real DSA feedback

**Ongoing research:** Training a diffusion-based trajectory planner on large-scale SOFA-generated synthetic data, transferring to real vascular geometries — targeting to overcome clinical data scarcity.

**Affiliations:** Tongji University × PKU DLIB | 2026

---

### System Architecture

{{< figure src="eve_architecture.png" caption="stEVE simulation pipeline: vessel tree, instrument, SOFA engine, and fluoroscopy rendering." >}}

### Clinical Navigation Demo

{{< figure src="demo_clinical.png" caption="Catheter navigation in patient-specific vascular anatomy — final frame of a clinical test episode." >}}
