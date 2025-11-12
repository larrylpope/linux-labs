# Day 42 - Branching with git branch and git checkout -b

## Objective
Practice creating and switching branches to isolate changes.

## Commands Used
```bash
git branch
git checkout -b feature-hello
git add day42_branching.md
git commit -m "Add branching practice file"
git push -u origin feature-hello
git checkout main
git diff main..feature-hello
```

## Verification
- Feature branch appears on GitHub
- Branch switch confirmed via `git branch`
- Diff shows new file

## Notes
-Branches are lightweight pointers to commits.
-Use `git checkout -b` to create and move in one command.
