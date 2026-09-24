---
name: project-verification
description: Validates Orbit Flip Godot parsing, scene loading, architecture, and project structure. Use before declaring a step done or before committing.
---

# Project verification

1. Read `docs/ARCHITECTURE.md` and `docs/PROJECT_STATE.md`.
2. Check Godot script parsing and that the main scene loads (`godot --headless --import`, then `--quit-after 1`).
3. Confirm layer boundaries, no unexpected autoloads, and the expected folders.
4. Look for parser errors and obvious regressions.
5. Report pass/fail. Stop.
