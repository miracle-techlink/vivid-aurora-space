---
title: 'AGV Inspection & Reception Robot — Deployed at Tongji University'
summary: Autonomous ground vehicle with face recognition, IR thermal sensing, and LiDAR navigation — deployed for inspection and reception in Tongji University buildings.
tags:
  - Robotics
  - Hardware
  - Computer Vision
date: '2024-05-01T00:00:00Z'
external_link: ''
image:
  caption: 'AGV inspection robot deployed in Tongji teaching building'
  focal_point: Smart
links: []
---

A startup project developing AGV robots for inspection, reception, and cleaning, with live deployments at Tongji University campus.

**System overview:**
- **Perception:** Single-line LiDAR (180° FOV, 10m range, 0.18° resolution) + IR thermal camera for body temperature monitoring
- **Compute:** i7-4500U + 4G/64G onboard controller running Ubuntu 16.04
- **Motion:** 60W DC brushless motors, 0.5m/s max speed, 18650 battery (24V 20Ah)
- **AI Brain:** Face recognition + attendance tracking, environment monitoring, real-time data dashboard
- **Customization:** Open secondary development API

**Deployments:**
- Reception robot in Tongji exhibition hall
- Inspection robot in Tongji teaching building

**Stack:** Ubuntu · ROS · LiDAR SLAM · OpenCV face recognition · React dashboard
