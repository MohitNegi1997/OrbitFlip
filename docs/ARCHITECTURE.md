# Architecture

Orbit Flip uses feature-first Clean Architecture on Godot 4.x.

## Layout

- `app/` — process entry, bootstrap, and future navigation
- `core/` — config, constants, events, services, theme data, utilities
- `features/<feature>/` — one feature, four layers
- `shared/` — code and UI reused by more than one feature
- `assets/` — art, fonts, audio
- `tests/` — checks added with the feature they cover

`features/_template/` is an empty layer skeleton. Copy it when a feature is approved. Do not put gameplay there.

## Layers

| Layer | Responsibility |
|---|---|
| Presentation | Scenes, input, rendering. No gameplay rules. |
| Application | Use cases. Coordinates domain and infrastructure. |
| Domain | Rules and models. No Godot UI, scenes, or platform APIs. |
| Infrastructure | Persistence, platform, network, and other external systems. Implements interfaces required by inner layers. |

## Dependency direction

Presentation → Application → Domain.

Infrastructure depends inward. Domain does not depend on infrastructure, UI, or Godot scene types.

## Scenes

Scenes render and forward input. They call application use cases. Gameplay and domain rules do not live in scene scripts.

## State

- Domain models own gameplay state.
- Application owns use-case flow.
- Presentation owns view state only.
- Do not add autoloads or other global mutable state unless a Godot limitation requires it and the change is approved.

## Services

Services are small, single-purpose, and constructed where they are used. Do not add a global manager.

## Navigation

`app/navigation/` will own screen flow when UI is approved. Screens do not navigate by reaching into each other. Not implemented.

## Persistence

Only infrastructure reads or writes saves, accounts, or cloud data. Not implemented.

## Shared code

`shared/` is only for code used by more than one feature. Feature-specific code stays in that feature.

## Assets

- Prefer SVG for suitable icons and UI vectors.
- Shared vectors: `assets/svg/branding`, `icons`, `ui`, `gameplay`.
- Theme-specific vectors: `assets/svg/themes/<theme_name>/`.
- Fonts: `assets/fonts/`. Audio: `assets/audio/music` and `sfx`.

## Theme

`core/theme/ThemeProfile` holds one theme’s visual configuration: colors, asset root, and later typography, control styles, backgrounds, icons, gameplay visuals, and effects.

`shared/ui/themes/` is where Godot `Theme` and style resources will be built from a profile.

Cartoon Arcade (`res://core/theme/cartoon_arcade.tres`) is the only profile. Theme switching is not implemented. Gameplay must not branch on theme id. Replacing the active profile and its assets must be enough to change the look.

## Responsive UI

Reference viewport: 720 × 1280, portrait.

`canvas_items` stretch with `expand` makes 720 × 1280 the minimum. Taller or wider screens gain space.

UI uses anchors and full-rect roots. Safe areas, notches, and dynamic height come from `DisplayServer.get_display_safe_area()` when screens are built. Do not lock layouts to one phone aspect.

## Testing

Validate with a Godot headless import and a scene launch. Feature tests live in `res://tests/` and are added with the feature. No test framework is installed yet.

## Naming

- Files and folders: `snake_case`
- `class_name`: PascalCase
- Theme ids: `snake_case`
- Feature folder name matches the feature

## Phase gate

Follow `docs/PROJECT_STATE.md`. Do not start the next phase without explicit approval.
