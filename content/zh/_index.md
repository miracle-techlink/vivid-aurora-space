---
title: ''
date: 2022-10-24
type: landing

design:
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      username: admin
      text: ''
      button:
        text: 下载简历
        url: files/cv_liuyue.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      css_class: hbx-bg-gradient
      avatar:
        size: medium
        shape: circle
  - block: markdown
    content:
      title: '📚 我的研究'
      subtitle: ''
      text: |-
        我的研究聚焦于**具身智能基础模型**与真实机器人部署的交叉地带，主要推进两条并行方向。

        其一是 **VLA 记忆系统** —— 具体而言，如何让机器人在长时程任务中持续积累和更新知识，同时不产生无限增长的内存开销。我正在构建 GDN-Memory：一种基于 Gated DeltaNet 快权重的常量占用关联记忆，集成于 Slow-Fast 视频世界模型，目标投稿 ICRA/CoRL 2026。

        其二是**血管介入手术机器人** —— 从基于 SOFA 仿真的合成数据生成、扩散模型轨迹规划，到实时 DSA 引导，构建导管导航的端到端智能系统。

        研究之外，我联合创立了一家具身智能初创公司，将 VLA 技术落地于垂类机器人应用场景，已获奇绩创坛（前 YC 中国）合伙人个人种子轮投资。

        欢迎交流合作或探讨想法。
    design:
      columns: '1'
  - block: collection
    id: papers
    content:
      title: 代表性论文
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2
  - block: collection
    content:
      title: 近期论文
      text: ''
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation
  - block: markdown
    id: startup
    content:
      title: '初创公司'
      subtitle: ''
      text: |-
        我们是一家专注**具身智能垂类应用场景落地**的种子轮初创公司，致力于将前沿 VLA 技术真正部署到工业与医疗机器人实际场景中。

        已完成种子轮融资，获得**奇绩创坛**（前 YC 中国）合伙人个人投资，融资金额百万人民币，并取得部分意向订单，正在推进首批场景落地交付。

        核心方向覆盖垂类场景 VLA 快速适配（少样本微调 + TTT 在线学习）、工业与医疗机器人具身感知与操作，以及从训练到边缘推理的端到端部署栈。

        有合作意向或投资咨询？欢迎[联系我](/#contact)。
    design:
      columns: '1'
  - block: collection
    id: news
    content:
      title: 近期博客
      subtitle: ''
      text: ''
      page_type: blog
      count: 5
      filters:
        author: ''
        category: ''
        tag: ''
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ''
      offset: 0
      order: desc
    design:
      view: card
      spacing:
        padding: [0, 0, 0, 0]
---
