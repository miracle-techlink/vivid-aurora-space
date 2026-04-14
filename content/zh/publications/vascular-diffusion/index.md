---
title: '合成数据驱动的扩散模型用于血管腔内介入引导'

authors:
  - admin

date: '2026-03-01T00:00:00Z'
publishDate: '2026-03-01T00:00:00Z'

publication_types: ['article']

publication: '*准备投稿中*'
publication_short: '*准备投稿中*'

abstract: >
  血管腔内介入面临严峻的数据稀缺问题：真实患者导管轨迹获取成本高且标注有限。
  我们基于 SOFA FEM 构建高保真仿真环境（stEVE），采用 Cosserat 梁导丝模型与双平面 DSA X 射线投影，大规模生成合成手术数据。
  在此合成数据集上训练基于扩散模型的轨迹规划器，并通过轻量域适应阶段迁移至真实血管几何结构。
  在 CAS 与主动脉弓解剖结构上评估，本模型导航成功率与专家 RL 策略相当，同时能泛化到未见过的血管形态。

summary: >
  基于 SOFA 的高保真手术仿真生成合成训练数据，驱动扩散模型规划血管腔内导管轨迹，克服真实数据稀缺问题。

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
