---
layout: post
title: "Imaginarium: Vision-guided High-Quality 3D Scene Layout Generation"
date: 2025-10-17
description: Our work on vision-guided 3D scene layout generation is accepted by ACM Transactions on Graphics (TOG).
tags: [3D, scene-generation, computer-vision]
categories: publication
related_posts: false
---

We are excited to announce that our paper **Imaginarium** has been accepted by **ACM Transactions on Graphics (TOG)**!

## Overview

Generating artistic and coherent 3D scene layouts is crucial in digital content creation. Traditional optimization-based methods are often constrained by cumbersome manual rules, while deep generative models face challenges in producing content with richness and diversity. Furthermore, approaches that utilize large language models frequently lack robustness and fail to accurately capture complex spatial relationships.

## Our Approach

In this paper, we present a novel **vision-guided 3D layout generation system**:

1. **High-quality Asset Library**: We first construct a high-quality asset library containing 2,037 scene assets and 147 3D scene layouts.
2. **Image Generation Fine-tuning**: We employ an image generation model to expand prompt representations into images, fine-tuning it to align with our asset library.
3. **Robust Image Parsing**: We develop a robust image parsing module to recover the 3D layout of scenes based on visual semantics and geometric information.
4. **Scene Graph Optimization**: We optimize the scene layout using scene graphs and overall visual semantics to ensure logical coherence and alignment with the images.

## Results

Extensive user testing demonstrates that our algorithm significantly outperforms existing methods in terms of layout richness and quality.

- **Paper**: [arXiv:2510.15564](https://arxiv.org/abs/2510.15564)
- **Code**: [GitHub](https://github.com/HiHiAllen/Imaginarium)
