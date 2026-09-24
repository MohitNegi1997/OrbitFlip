# Art Direction

Theme:
Cartoon Arcade

Characteristics:

- cheerful
- colorful
- polished
- rounded
- soft depth
- glossy arcade controls
- friendly typography
- high readability
- strong visual feedback
- playful space environment

Current approved concept includes:

- bright cartoon planets
- colorful asteroids
- clouds
- stars
- space trails
- rounded game buttons
- strong yellow PLAY CTA
- blue secondary buttons

Palette: blue, sky blue, yellow, orange, white, pink accents.

Bootstrap color tokens live in `res://core/theme/cartoon_arcade.tres`. Final UI color values require screen approval.

## Main Menu top HUD

Top row contains:

Settings | Coins | Diamonds

These must have:

- consistent margins
- consistent vertical alignment
- balanced horizontal spacing
- safe-area compliance

## Login and Cloud Save

These must not be shown as standalone Main Menu controls.

They belong inside Settings.

Settings will later contain:

- Login / Account
- Cloud Save / Sync
- Music
- Sound Effects
- Vibration
- Haptics
- Notifications
- Graphics Quality

Do not implement these screens yet.

Future themes may include Cosmic Minimal, Fantasy Sky Realm, Tech Industrial, and Nature Energy. Do not build them now. A later version must be able to replace the entire visual theme without rewriting gameplay.
