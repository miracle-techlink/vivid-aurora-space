---
title: 'GDN-Memory: Constant-Footprint Associative Memory for Embodied World Models'

authors:
  - admin

date: '2026-04-01T00:00:00Z'
publishDate: '2026-04-01T00:00:00Z'

publication_types: ['paper-conference']

publication: '*ICRA / CoRL 2026* (In Preparation)'
publication_short: '*ICRA/CoRL 2026*'

abstract: >
  Long-horizon robot manipulation requires agents to accumulate and update
  knowledge across episodes without unbounded memory growth.
  We propose a three-layer hierarchical memory system integrated into a
  Slow-Fast video world model (Genie Envisioner) that maintains a constant
  256 KB footprint regardless of episode length.
  Layer 1 (physical memory) inserts a Gated DeltaNet (GDN) TTT layer
  inside each DiT block of the 2B-parameter video world model,
  positioned after cross-attention and before the FFN, with a shared
  fast-weight matrix W ∈ ℝ^{64×64} updating at every Slow Path tick (5 Hz).
  Layers 2–3 (object and behavioral memory) hang off the Slow Path externally,
  using CLIP/DINO visual latents to update per-object W_obj and
  per-person W_person associative matrices via online GDN writes.
  Memory tokens are injected into the Action DiT (160M, 30 Hz) via
  cross-attention, closing the perception-action loop.
  We validate the core hypothesis — that a d×d GDN matrix at d=256
  can store >100 object-position associations at >85% cosine retrieval
  accuracy and recover within 3 re-observations after 20% positional
  perturbation — through a staged synthetic-then-real embedding protocol.
  The full system runs on-device via SRAM fast-weight computation,
  3D RoPE spatial encoding, and dual CUDA stream scheduling,
  achieving <1ms memory update latency without blocking the 30 Hz
  action generation path.

summary: >
  A three-layer (physical / object / behavioral) constant-memory system
  built on Gated DeltaNet fast weights, integrated into Genie Envisioner's
  Slow-Fast inference pipeline. 256 KB total footprint, <1ms update latency,
  >85% associative retrieval accuracy.

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
