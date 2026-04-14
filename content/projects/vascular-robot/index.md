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
---

A complete research platform for AI-assisted endovascular intervention, spanning preoperative 3D planning through intraoperative RL-guided navigation.

**Pipeline:**
1. **CTA → STL** — TotalSegmentator vessel segmentation, VMTK centerline extraction
2. **SOFA FEM Simulation** — Cosserat beam guidewire model, realistic vascular deformation
3. **RL Navigation** — SAC/PPO agents with geodesic distance reward + safety constraints
4. **Biplane DSA** — DLT triangulation + Beer-Lambert X-ray projection for 2D-3D registration
5. **Intraoperative Correction** — SE(3) IRC-RL with real DSA feedback

**Ongoing research:** Training a diffusion-based trajectory planner on large-scale SOFA-generated synthetic data, transferring to real vascular geometries — targeting to overcome clinical data scarcity.

**Affiliations:** Tongji University × PKU DLIB | 2026
