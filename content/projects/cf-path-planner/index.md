---
title: 'CF-Path-Planner: Stress-Driven Toolpath Planning for CCF 3D Printing'
summary: FEA + topology optimization + geodesic path planning for multi-axis continuous carbon fiber 3D printing. Aligns fiber deposition with principal stress directions for maximum structural performance.
tags:
  - Additive Manufacturing
  - Path Planning
  - Web App
date: '2026-02-01T00:00:00Z'
external_link: ''
image:
  caption: 'Real-time 3D layer preview with Three.js'
  focal_point: Smart
links:
  - icon: github
    icon_pack: fab
    name: Code
    url: https://github.com/miracle-techlink
---

A full-stack toolpath planning system for multi-axis continuous carbon fiber (CCF) FFF printers, with a Next.js 15 web interface for real-time 3D visualization.

**Algorithm pipeline:**
- **FEA** (scikit-fem) — linear elastic stress analysis, principal stress direction extraction
- **SIMP topology optimization** — print direction enumeration to minimize overhang area
- **Geodesic path planning** — stress-aligned surface routing on arbitrary geometries
- **XYA motion planner** — helical winding + infill layer G-code generation (16× speedup)
- **Three.js visualization** — real-time layer-by-layer preview in browser

**Stack:** Python · scikit-fem · Next.js 15 · Three.js · TypeScript · Tailwind
