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
  - icon: brands/bilibili
    name: Demo
    url: https://www.bilibili.com/video/BV1kSA3zbEXQ/
---

{{< link-card url="https://github.com/miracle-techlink" title="miracle-techlink / GitHub" desc="GDN-Memory 代码仓库（即将开源）" >}}

{{< link-card url="https://www.bilibili.com/video/BV1kSA3zbEXQ/" title="GDN-Memory Demo · Bilibili" desc="具身记忆系统演示视频" >}}

A three-layer hierarchical memory system for embodied agents built on **Gated DeltaNet (GDN)** fast-weight matrices, integrated into the Genie Envisioner Slow-Fast VLA architecture.

**Architecture:**
- **Layer 1 (Physical)** — TTT layer inside each of the 28 DiT blocks of GE-Base (2B), inserted after cross-attention, before FFN. Shared W ∈ ℝ^{64×64} updated at 5 Hz Slow Path.
- **Layer 2–3 (Object / Behavioral)** — External to Slow Path. CLIP/DINO detects objects from visual latents, writes W_obj and W_person via online GDN updates. Memory tokens injected into GE-Act (160M, 30 Hz) via cross-attention.

**Key properties:**
- Constant 256 KB memory regardless of episode length
- <1ms GDN update latency (SRAM fast-weight computation)
- 3D RoPE spatial encoding for object-position binding
- Dual CUDA stream + Double Buffering scheduling

**Target:** ICRA / CoRL 2026 | Affiliations: Tongji CS × PKU DLIB × 智元机器人

---

## Demo

{{< bilibili BV1kSA3zbEXQ >}}

---

## Experiment Log

Staged validation: synthetic → real-scene → VLA integration → memory robustness → cold-start.

---

### Exp A — GDN Object Memory: Synthetic Validation &nbsp; ✅ PASS

[📄 Read Report (PDF)](/files/gdn-memory/exp_a_gdn_synthetic.pdf)

Validates the core GDN mechanism across 5 sub-experiments on synthetic data.

| Hypothesis | Result |
|---|---|
| H1 Capacity | 100% retrieval at N≤100; 99.2% at N=200 (4.5× safety margin) |
| H2/H3 Online update | 99.8% recovery after 1 re-observation; 0.0 pp interference on unmoved |
| Hyperparameter robustness | All 25 (γ, η) combos → acc=1.000 |
| Momentum ablation | η_s≥0.8 harmful, must be disabled |
| Key ablation | Random CLIP keys cost only 6.3 pp vs orthogonal |

---

### Exp B — GenieSim Real-Scene Validation &nbsp; 🔜 Planned

[📄 Read Design (PDF)](/files/gdn-memory/exp_b_genesim.pdf)

Transfers GDN to GenieSim home_g2 (13 scene variants) using real CLIP ViT-L/14 features on a 智元 G2 robot.

| Hypothesis | Target |
|---|---|
| H1 | hit@1m ≥ 80% for N≤50 objects |
| H2 | After 20% objects moved: recovery hit@1m ≥ 75%, unmoved degradation ≤5 pp |
| H3 | ≥10/13 scenes individually pass H1 + H2 |

---

### Exp C — GDN + GE-Act Integration &nbsp; 🔜 Planned

[📄 Read Design (PDF)](/files/gdn-memory/exp_c_geact_integration.pdf)

Injects GDN memory tokens into GE-Act's Action DiT via `attn3_hidden_states`. Only a ~524K projection layer is trained (backbone frozen). Benchmarked on CALVIN, LIBERO, and ICRA26 World Model Track.

| Hypothesis | Target |
|---|---|
| H_C1/C2 | Reproduce GE-Act baseline (CALVIN Avg ≥ 4.0), ≤5 pp degradation on standard tasks |
| H_C3 | nDTW: 0.388 → ≥0.538 (+15 pp) on ICRA26 competition data |
| H_C4 | GDN achieves ≥90% of KV-Cache upper bound at 256 KB |

---

### Exp D — System 2 Surprise Routing &nbsp; 🔜 Planned

[📄 Read Design (PDF)](/files/gdn-memory/exp_d_surprise_routing.pdf)

Tests a System 2 explicit event buffer (K=100 slots, 100 KB) using GDN update magnitude as a zero-cost surprise signal — protecting memory when 50% of objects are simultaneously displaced (System 1 alone degrades 20–30 pp).

| Hypothesis | Target |
|---|---|
| H_D1 | System 1+2 retains unmoved memory ≥ System 1 alone +15 pp |
| H_D2 | Buffer exact recall hit@1m ≥ 95% |
| H_D3 | Surprise decreases monotonically, ≤30% of initial after 5 reps (consolidation) |

---

### Exp E — System 3 Persistent Prior &nbsp; 🔜 Planned

[📄 Read Design (PDF)](/files/gdn-memory/exp_e_persistent_prior.pdf)

Tests learnable prior tokens P ∈ ℝ^{32×256} (32 KB, frozen at deployment) to cut cold-start exploration from ~400 steps to ~180 steps.

| Strategy | Expected gain |
|---|---|
| A: CLIP text embeddings of 32 common objects (zero training) | −40% steps-to-80%-hit |
| B: MAML meta-learning over multi-scene episodes | −57% steps-to-80%-hit |
| H_E2 | Prior steady-state gap ≤3 pp at 500 steps (no long-term interference) |
