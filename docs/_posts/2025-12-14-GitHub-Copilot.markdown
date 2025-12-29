---
title:  "GitHub Copilot"
date:   2025-12-14
categories: [AI]
tags: ["ai", "ghcp"]
toc: true
toc_label: "Table of Contents"
---
# GitHub Copilot

This is my first blog, and hopefully I will continue posting blogs and series where I discuss day-to-day tasks and how I use my tooling to ace my work. I’m keeping the blog short so it doesn’t feel like reading actual documentation.

In this blog, we will discuss **GitHub Copilot**, which is widely adopted by many organizations to increase engineer efficiency and improve delivery velocity by harnessing the power of AI.

---
## Shortcuts

Shortcuts play a vital role while coding, as switching back and forth between chat windows can be a tough task and may result in smaller or less useful code suggestions.

There are many keyboard shortcuts available, but some important ones are:

- <kbd>Ctrl</kbd> + <kbd>I</kbd> → Inline suggestion  
- <kbd>Ctrl</kbd> + <kbd>Enter</kbd> → Alternate / multiple suggestions  

For more shortcuts, check the official docs:  [Keyboard shortcuts](https://docs.github.com/en/copilot/reference/keyboard-shortcuts)

---
## Asking questions ❓

Sometimes we want to ask questions about our code. GitHub Copilot provides an inline question-and-answer mode, which plays a vital role here.

We can ask questions directly inside the file by writing them as comments. This is a good approach for quick understanding.

Now let’s jump into the IDE and see how this works. Add a question after the **comment character**, and Copilot will respond in a more formal way.

![Asking questions in Copilot](/assets/img/posts/GHCP/1.png){:width="600px"}

> **Note:** This is good for brief answers inside the code itself. If you want a more descriptive explanation, it’s better to switch to chat mode.

---
## Generate automatic commit message

Copilot can also help generate commit messages automatically based on your changes.
![Auto commit message](/assets/img/posts/GHCP/2.png){:width="600px"}

---
## Command palette

Most IDEs support <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>P</kbd>, which opens the Command Palette on Windows.
Search for the **Copilot** keyword, and it will list all Copilot-related commands available in your IDE.
![Command palette](/assets/img/posts/GHCP/3.png){:width="600px"}
---
## Local review

Now let’s move forward to local review. Select a code block, right-click, and let Copilot review it. However, one issue with this approach is that Copilot reviews the code based on its own guidelines.
![Review](/assets/img/posts/GHCP/4.png){:width="600px"}

This makes the approach a bit volatile. To fix this, we can provide fixed instructions so Copilot behaves the same way every time.

Create a `.github` directory and add a file named `copilot-review-guidelines.md`. Copilot will automatically detect and use it.
Here you can find sample files to use in your project : [custom intructions](https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions?tool=webui#enabling-or-disabling-repository-custom-instructions)

---