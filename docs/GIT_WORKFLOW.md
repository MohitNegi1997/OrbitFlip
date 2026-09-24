# Git Workflow

One logical step per commit.

## Before commit

- Inspect `git diff`
- Run relevant validation
- Confirm no secrets, generated cache, or unrelated changes

## UI

Do not commit unfinished UI because implementation finished.
UI must be visually approved first.
Then: commit → push → next step.

Project foundation setup may be committed after successful verification.

## Push

Push the current branch to the existing origin.
Do not force push.
Do not change origin unless explicitly requested.
Do not create a new repository.

## Phase gate

No development phase advances automatically.
