# Day 44 - GitHub Forks & Pull Requests

## Objective
Learn to fork a repository, push changes to a branch, and open a pull request.

## Workflow
1. Forked repository on GitHub.
2. Cloned fork locally.
3. Created branch `feature-pull-request-demo`.
4. Committed new file and pushed to fork.
5. Opened PR to original repo for review.

## Commands
```bash
git clone https://github.com/<user>/<repo>.git
git remote add upstream https://github.com/<original>/<repo>.git
git checkout -b feature-pull-request-demo
git add .
git commit -m "Add pull request demo"
git push -u origin feature-pull-request-demo
```

## Verification
- PR visible on GitHub
- Branch created and tracked
- `upstream` set for sync

## Notes
- Always branch from `main` before changes.
- Use PR description to summarize purpose and impact.
- Fetch from `upstream` regularly to stay current.
