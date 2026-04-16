---
name: dotfiles-commit
description: Commit changes to the dotfiles repo by grouping them into atomic, topical commits. Use this skill whenever the user asks to commit, save, check in, or push their dotfiles changes — even if they don't say "commit" explicitly. Also use when you see uncommitted changes in the dotfiles repo and the user indicates they want to persist them.
---

# Dotfiles Commit

This repo is a personal dotfiles collection. Changes often span multiple config files across different tools (shell, editor, terminal, tmux, etc.). The user expects changes to be committed as **atomic, topical groups** — one commit per logical concern, not one giant commit for everything.

## How to group changes

Analyze all staged and unstaged changes, then cluster them by logical topic. A "topic" is a single coherent change that someone would want to revert or cherry-pick independently. Examples of good groupings:

- Switching a color theme across Ghostty, vim, and tmux = **one commit** (same intent, same theme)
- Adding a new tool's config + updating PATH for it = **one commit**
- Updating permissions for an unrelated tool = **separate commit**
- A tool-managed block (like devbar certs) added to multiple shell profiles = **one commit**

When in doubt, group by *intent* rather than by *file*. Two changes in the same file with different purposes should be split; changes across five files for the same purpose should be one commit.

## Commit message style

- **Subject line**: Short imperative sentence. Describe the change, not the files. No conventional-commit prefixes (no `feat:`, `fix:`, `chore:`).
- **Body** (optional): One or two sentences explaining *why*, only when the subject alone isn't enough. Skip the body for self-explanatory changes.
- Examples from this repo:
  - `Fix tmux session name parsing for names with spaces`
  - `Add Ghostty terminal configuration`
  - `Reorganize zsh initialization order` + body: "Source bashrc at end to ensure it overrides oh-my-zsh defaults."
  - `Extract salesforce config to local file`

## Workflow

1. Run `git status` and `git diff` to see all changes.
2. Identify the logical topics and present a **commit plan overview** — a numbered list where each item shows the proposed commit message and the files involved. This gives the user the big picture first.
3. **Walk through each commit one at a time.** For each proposed commit:
   - Show the commit message
   - Show the actual diff (the relevant portions of `git diff` output) so the user can see exactly what's included
   - Ask for confirmation before proceeding: "Ready to commit this? Or want to adjust?"
   - Only after the user approves, stage the files and create the commit
4. For staging:
   - Use `git add <file>` for whole-file changes
   - If a single file has changes belonging to multiple topics, flag this to the user and let them decide how to handle it rather than silently including everything
5. Commit using a HEREDOC for the message.
6. After all commits, run `git status` and show a final summary of what was committed.

## Things to watch for

- **Mixed-topic files**: If a single file has changes belonging to two different logical topics (e.g., `.zshrc` has both a PATH fix and an unrelated cert addition), flag this to the user. Let them decide whether to commit the whole file under one topic or to split it manually.
- **Machine-generated blocks**: Tool-managed sections (like `# devbar-managed-start` / `# devbar-managed-end`) should be grouped together as one commit regardless of which files they appear in.
- **Don't commit secrets**: Skip `.env` files, credential files, tokens. Warn if you see any.
- **Respect .gitignore**: Don't stage ignored files.
