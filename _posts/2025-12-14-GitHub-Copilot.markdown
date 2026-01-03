---
title: "GitHub Copilot: Boosting Developer Productivity with AI"
date: 2025-12-14
categories: [AI]
tags: ["ai", "github-copilot", "developer-productivity", "automation"]
---

## GitHub Copilot

This is my first blog, and I plan to continue writing posts and series where I share how I handle day-to-day development tasks and use modern tooling to improve my workflow. I’m intentionally keeping this blog concise so it feels practical rather than like formal documentation.

In this post, we’ll explore **GitHub Copilot**, a tool widely adopted by organizations to improve engineering efficiency and delivery velocity by leveraging the power of AI.

---

## Keyboard Shortcuts for GitHub Copilot

Keyboard shortcuts play a crucial role while coding. Constantly switching between editor tabs and chat windows can break focus and often results in less effective suggestions.

GitHub Copilot provides several shortcuts, but here are a few commonly used ones:

- <kbd>Ctrl</kbd> + <kbd>I</kbd> → Inline suggestion
- <kbd>Ctrl</kbd> + <kbd>Enter</kbd> → View alternate or multiple suggestions

For a complete list, refer to the official documentation:
[GitHub Copilot keyboard shortcuts](https://docs.github.com/en/copilot/reference/keyboard-shortcuts)

---

## Asking Questions Inside Your Code ❓

There are times when we want to understand existing code quickly. GitHub Copilot offers an inline question-and-answer capability that works directly inside your editor.

You can ask questions by writing them as comments in the file. This approach is especially useful for gaining quick insights without leaving the code context.

To try this, add a question after the appropriate **comment character**, and Copilot will respond with a clear and structured explanation.

[![Asking questions in Copilot](https://live.staticflickr.com/65535/55017329195_a16abd8aa6_c.jpg)](https://flic.kr/p/2rPGcci)

> **Note:** This method works best for short explanations. For more detailed discussions or architectural guidance, switching to Copilot Chat is recommended.

---

## Generating Automatic Commit Messages

GitHub Copilot can also generate commit messages automatically based on the changes you’ve made in your codebase. This helps maintain consistency and saves time during development.

[![Auto commit message](https://live.staticflickr.com/65535/55016131892_cd0a3466d6_b.jpg)](https://flic.kr/p/2rPA4h9)

---

## Using the Command Palette

Most IDEs support the shortcut <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>, which opens the **Command Palette** on Windows.

Once opened, search for **Copilot**, and you’ll see all Copilot-related commands available in your IDE. This is a convenient way to access features without memorizing every shortcut.

[![Command palette](https://live.staticflickr.com/65535/55017276134_2238948c75_b.jpg)](https://flic.kr/p/2rPFVqs)

---

## Local Code Review with GitHub Copilot

GitHub Copilot also supports local code reviews. You can select a block of code, right-click, and ask Copilot to review it.

However, one limitation of this approach is that Copilot performs reviews based on its default guidelines, which may vary between runs.

[![GitHub Copilot local review](https://live.staticflickr.com/65535/55017329200_a9612c0c71_b.jpg)](https://flic.kr/p/2rPGcco)

This can make the feedback feel inconsistent. To address this, you can define fixed review instructions so Copilot behaves consistently across your project.

Create a `.github` directory and add a file named `copilot-review-guidelines.md`. GitHub Copilot will automatically detect and use this file during reviews.

You can find sample configuration files here:
[Configure custom Copilot instructions](https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions?tool=webui#enabling-or-disabling-repository-custom-instructions)

---
