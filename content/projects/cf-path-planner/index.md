---
title: 'MacroHard Maker — CCF 3D Printing Path Planner'
summary: Stress-driven toolpath planning for multi-axis continuous carbon fiber 3D printing. FEA + topology optimization + geodesic path planning, with a desktop app and FastAPI backend.
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
    name: Core (Backend)
    url: https://github.com/miracle-techlink/macrohard-maker-core
  - icon: github
    icon_pack: fab
    name: Desktop App
    url: https://github.com/miracle-techlink/macrohard-maker-desktop
---

**MacroHard Maker** is a full-stack toolpath planning system for multi-axis continuous carbon fiber (CCF) FFF printers, aligning fiber deposition with principal stress directions for maximum structural performance.

{{< link-card url="https://github.com/miracle-techlink/macrohard-maker-core" title="macrohard-maker-core" desc="Python 后端核心：FastAPI + FEA + 路径规划 + G-code 生成" >}}

{{< link-card url="https://github.com/miracle-techlink/macrohard-maker-desktop" title="macrohard-maker-desktop" desc="连续碳纤维 3D 打印路径规划桌面软件" >}}

---

**Algorithm pipeline:**
- **FEA** (scikit-fem) — linear elastic stress analysis, principal stress direction extraction
- **SIMP topology optimization** — print direction enumeration to minimize overhang area
- **Geodesic path planning** — stress-aligned surface routing on arbitrary geometries
- **XYA motion planner** — helical winding + infill layer G-code generation (16× speedup)
- **Three.js visualization** — real-time layer-by-layer preview in browser

**Stack:** Python · FastAPI · scikit-fem · Next.js 15 · Three.js · TypeScript · Tailwind
