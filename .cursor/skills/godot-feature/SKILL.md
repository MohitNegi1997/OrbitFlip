---
name: godot-feature
description: Implements exactly one approved Orbit Flip feature using feature-first Clean Architecture. Use when the user asks to implement an approved gameplay or application feature.
---

# Godot feature

1. Read `docs/ARCHITECTURE.md`, `docs/PROJECT_STATE.md`, and the approved feature specification.
2. Stop if the current phase does not allow this feature.
3. Implement only that feature under `res://features/<feature>/` (domain, application, infrastructure, presentation).
4. Keep domain free of Godot UI. Coordinate use cases in application. Put platform and persistence in infrastructure.
5. Run project verification. Report changed files. Stop.
