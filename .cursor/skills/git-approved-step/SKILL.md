---
name: git-approved-step
description: Verifies, commits, and pushes one approved Orbit Flip development step. Use only after the user approves that step, including visual approval for UI.
---

# Git approved step

1. Read `docs/GIT_WORKFLOW.md` and `docs/PROJECT_STATE.md`.
2. Confirm this step is approved. For UI, confirm visual approval. Otherwise stop.
3. Run project verification. Inspect `git diff`. Reject secrets, `.godot/`, and unrelated files.
4. Commit one logical step. Push the current branch to the existing origin.
5. Do not force push. Do not change origin. Report the commit and stop.
