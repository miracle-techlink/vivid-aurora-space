---
# Leave the homepage title empty to use the site title
title: ''
date: 2022-10-24
type: landing

design:
  # Default section spacing
  spacing: '6rem'

sections:
  - block: resume-biography-3
    content:
      # Choose a user profile to display (a folder name within `content/authors/`)
      username: admin
      text: ''
      # Show a call-to-action button under your biography? (optional)
      button:
        text: Download CV
        url: files/cv_liuyue.pdf
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      # Apply a gradient background
      css_class: hbx-bg-gradient
      # Avatar customization
      avatar:
        size: medium # Options: small (150px), medium (200px, default), large (320px), xl (400px), xxl (500px)
        shape: circle # Options: circle (default), square, rounded
  - block: markdown
    content:
      title: '📚 My Research'
      subtitle: ''
      text: |-
        My research sits at the intersection of **embodied AI foundation models** and real-world robot deployment. I focus on two complementary threads.

        The first is **VLA memory systems** — specifically, how robots can accumulate and update knowledge across long-horizon tasks without unbounded memory growth. I'm building GDN-Memory, a constant-footprint associative memory integrated into a Slow-Fast video world model via Gated DeltaNet fast weights, targeting ICRA/CoRL 2026.

        The second is **endovascular surgical robotics** — end-to-end intelligence for catheter navigation, from high-fidelity SOFA simulation and synthetic data generation to diffusion-based trajectory planning and real-time DSA guidance.

        Alongside the research, I co-founded a seed-stage startup deploying VLA technology into vertical robotics applications, backed by a partner at Qiji Chuangtan (formerly YC China) through a personal investment.

        Feel free to reach out for collaboration or to discuss ideas.
    design:
      columns: '1'
  - block: collection
    id: papers
    content:
      title: Featured Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2
  - block: collection
    content:
      title: Recent Publications
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
      title: 'Startup'
      subtitle: ''
      text: |-
        We are a seed-stage startup focused on **deploying embodied intelligence into real-world vertical applications**, bridging cutting-edge VLA research and production-ready robotics systems in industrial and medical domains.

        We have closed a seed round via a personal investment from a partner at **Qiji Chuangtan** (formerly YC China), with initial intent orders already in place and first deployment engagements underway.

        Our core focus spans rapid VLA adaptation for vertical scenes (few-shot fine-tuning + TTT online learning), embodied perception and manipulation for industrial and medical robots, and an end-to-end deployment stack from training to edge inference.

        Interested in partnership or investment? Feel free to [reach out](/#contact).
    design:
      columns: '1'
  - block: collection
    id: news
    content:
      title: Recent Blog Posts
      subtitle: ''
      text: ''
      # Page type to display. E.g. post, talk, publication...
      page_type: blog
      # Choose how many pages you would like to display (0 = all pages)
      count: 5
      # Filter on criteria
      filters:
        author: ''
        category: ''
        tag: ''
        exclude_featured: false
        exclude_future: false
        exclude_past: false
        publication_type: ''
      # Choose how many pages you would like to offset by
      offset: 0
      # Page order: descending (desc) or ascending (asc) date.
      order: desc
    design:
      # Choose a layout view
      view: card
      # Reduce spacing
      spacing:
        padding: [0, 0, 0, 0]
---
