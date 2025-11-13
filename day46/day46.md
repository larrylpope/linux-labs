# Day 46 - Git Log, Diff, and Stash

## Objectives
Understand how to:
- Inspect commit history (`git log`)
- Compare changes (`git diff`)
- Temporarily store work (`git stash`)

## Key Commands
- `git log --oneline --graph` -> compact history view
- `git diff` -> unstaged changes
- `git diff --staged` -> staged changes
- `git stash push -m "message"` -> save uncommitted work
- `git stash list` -> show stashes
- `git stash pop` -> restore and remove stash

## Verification
- Observed commit graph for recent history
- Confirmed diff output for staged vs. unstaged changes
- Used stash to safely switch branches

## Notes
- Use `igt log -p` for detailed patch history.
- `git stash pop` may cause conflicts; review before commit.
- `git diff HEAD` shows working directory vs. last commit.
