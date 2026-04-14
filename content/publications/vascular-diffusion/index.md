---
title: 'Synthetic-Data-Driven Diffusion Models for Endovascular Intervention Guidance'

authors:
  - admin

date: '2026-03-01T00:00:00Z'
publishDate: '2026-03-01T00:00:00Z'

publication_types: ['article']

publication: '*In Preparation*'
publication_short: '*In Preparation*'

abstract: >
  Endovascular intervention suffers from a critical data scarcity problem:
  real-patient catheter trajectories are expensive and annotation-limited.
  We construct a high-fidelity simulation environment (stEVE) based on SOFA
  FEM with Cosserat beam guidewire models and biplane DSA X-ray projection,
  generating large-scale synthetic procedural data at scale.
  We then train a diffusion-based trajectory planner on this synthetic corpus
  and transfer it to real vascular geometries via a lightweight domain
  adaptation stage. Evaluated on CAS and aortic arch anatomies, our model
  achieves navigation success rates competitive with expert RL policies
  while generalizing to unseen vessel morphologies.

summary: >
  High-fidelity SOFA-based surgical simulation generates synthetic training data
  for a diffusion model that plans endovascular catheter trajectories,
  overcoming real-data scarcity.

tags:
  - Medical Robotics
  - Surgical AI
  - Diffusion Models
  - Simulation-to-Real

featured: true

image:
  focal_point: 'Center'
  preview_only: false

projects: []
slides: ""
---
