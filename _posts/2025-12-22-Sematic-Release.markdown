---
title: "Semantic Release: Automated Versioning and GitHub Releases"
date: 2025-12-22
tags: ["semantic-release", "devops", "release-automation"]
categories: [DevOps]
---

## Introduction

While working on Terraform modules, we wanted a consistent and automated way to release modules using GitHub tags. Instead of manually managing versions and releases, we explored multiple tools to streamline this process.

Our broader goal was not limited to Terraform modules alone. We wanted a generic and reusable release process that could also be applied to other projects in the future.

After evaluating different options, we identified **semantic-release** as a suitable solution for automated versioning and release management.

---

## Approach

The setup for semantic-release involves a few straightforward steps.

### 1. Install Node.js

Semantic-release runs on Node.js, so ensure Node.js is installed on the machine or runner where the release process will execute.

---

### 2. Create the `.releaserc` Configuration File

Create a `.releaserc` file in the root of your module or repository. This file defines the release behavior and acts as a single unit for versioning and publishing.

The file is written in JSON format and contains key configuration options:

- **branches** → Specifies which branches are eligible for releases
- **plugins** → Defines the plugins used during the release lifecycle

Example `.releaserc` configuration:
