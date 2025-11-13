# Day 47 - Rebase vs Merge

## Objective
Compare and demonstrate Git merge and rebase wworkflows.

## Sumary
- **Merge:** combines branches with a merge commit -> preserves history.
- **Rebase:** replays commits on top of target branch 0> creates linear history.

## Commands used
```bash
git merge feature-rebase-merge
git rebase main
git log --oneline --graph
git rebase --continue
git rebase --abort
```

## Observations
- Merge added an extra merge commit.
- Rebase fast-forwarded `main` to include feature commits.
- History cleaner after rebase.

## Best Practices
- Use merge for collaborative/public branches.
- Use rebase before pushing feature work to clean up history.
- Never rebase already-pushed shared branches.
