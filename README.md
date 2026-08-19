# EpiC API

<p align="center">
  <img src="assets/epic-banner.svg" width="100%" alt="EpiC — multimodal gene regulation modeling">
</p>

<p align="center">
  <a href="https://www.python.org/"><img alt="Python 3.10+" src="https://img.shields.io/badge/python-3.10%2B-3776AB"></a>
  <a href="LICENSE"><img alt="License: BSD-3-Clause" src="https://img.shields.io/badge/client%20license-BSD--3--Clause-6f42c1"></a>
  <a href="MODEL_ACCESS.md"><img alt="Model access" src="https://img.shields.io/badge/model%20access-controlled-f59e0b"></a>
</p>

<p align="center">
  <b>Public Python client for gene-expression prediction and programmable<br>
  <i>in silico</i> epigenetic perturbation with EpiC.</b>
</p>

> [!IMPORTANT]
> This repository contains the **public client, interface documentation, examples,
> and tests only**. It does not contain model architecture code, training code,
> preprocessing pipelines, model weights, databases, or the private inference
> service. The client license does not grant rights to those separate assets.

## Overview

EpiC is a multimodal model introduced in the submitted manuscript
*Decoding gene regulation and simulating epigenetic perturbation across cell types
with EpiC*. The model integrates genomic sequence, DNA methylation, and histone
modification information across diverse human tissues and cell types.

This repository follows an API-client release pattern: researchers can inspect and
reuse the calling interface while model execution remains behind a separately
operated service. API access is currently controlled; see [Model access](MODEL_ACCESS.md).
