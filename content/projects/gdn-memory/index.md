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
  caption: 'Three-layer memory system integrated into GE Slow-Fast pipeline'
  focal_point: Smart
links:
  - icon: github
    icon_pack: fab
    name: Code
    url: https://github.com/miracle-techlink
---

A three-layer hierarchical memory system for embodied agents built on **Gated DeltaNet (GDN)** fast-weight matrices, integrated into the [Genie Envisioner](https://github.com/miracle-techlink) Slow-Fast VLA architecture.

**Architecture:**
- **Layer 1 (Physical)** — TTT layer inside each of the 28 DiT blocks of GE-Base (2B), inserted after cross-attention, before FFN. Shared W ∈ ℝ^{64×64} updated at 5Hz Slow Path.
- **Layer 2–3 (Object / Behavioral)** — External to Slow Path. CLIP/DINO detects objects from visual latents, writes W_obj and W_person via online GDN updates. Memory tokens injected into GE-Act (160M, 30Hz) via cross-attention.

**Key properties:**
- Constant 256KB memory regardless of episode length
- <1ms GDN update latency (SRAM fast-weight computation)
- 3D RoPE spatial encoding for object-position binding
- Dual CUDA stream + Double Buffering scheduling

**Target:** ICRA / CoRL 2026 | Affiliations: Tongji CS × PKU DLIB × 智元机器人
