# Day 43 - Merging & Resolving Conflicts

## Objective
Merge a feature branch into main and resolve a manual conflict.

## Workflow
1. Created `feature-merge-test` branch from `main`.
2. Edited `day43_merge_demo.txt` in both branches to cause a conflict.
3. Attempted `git merge feature-merge-test` 0> Conflict detected.
4. Resolved conflict by editing file and removing markers.
5. Committed resolution and verified merge graph.

## Commands
```bash
git checkout -b feature-merge-test
git merge feature-merge-test
git status
git add <file>
git commit
git log --oneline --graph
```

## Notes
- Conflict markers: `<<<<<<< HEAD`, `=======`, `>>>>>>>`.
- Resolve manually then stage and commit.
- Use `git diff --merge` to compare both sides.
- Avoid conflicts by pulling latest `main` before starting feature work.
