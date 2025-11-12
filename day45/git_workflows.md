# Day 45 - Git Workflow Documentation

## Overview
This document defines standard Git workflows for local development, branching, merging, and collaborating through GitHub pull requests.
Applies to both solo and multi-developer environments.

---

## 1. Repository Setup

### Clone an Existing Repository
```bash
git clone https://github.com/<user>/<repo>.git
cd <repo>
git remote -v
```

### Configure Remotes
If using a fork:
```bash
git remote add upstream https://github.com/>original-owner>/<repo>.git

## 2. Branching Model
- **main** -> stable production branch
- **feature/** -> new functionality
- **bugfix/** -> patches
- **hotfix/** -> urgent production fixes
Create and switch to a new branch:
```bash
git checkout -b feature/my-feature
```
List and delete branches:
```bash
git branch -a
git branch -d feature/my-feature
```

## 3. Development Cycle
- `git add .` - Stage changes
- `git commit -m "Clear, short message"` - Commit snapshot
- `git log --oneline --graph` - View history
- `git pull origin main` - Sync main

## 4. Collaboration Workflow (Pull Requests)

### Fork and Clone
1. Fork repository on GitHub
2. Clone your fork locally
3. Create a feature branch
4. Push branch to your fork:
```bash
git push -u origin feature/my-feature
```

### Submit a Pull Request
- Open a PR from your b ranch to the original repo's `main`.
- Include: summary, purpose, and testing instructions.
- Use GitHub's "Resolve Conflicts" if needed.

## 5. Merge and Cleanup
Merge feature branch locally:
```bash
git checkout main
git pull
git merge feature/my-feature
git push origin main
```
Delete feature branch after merge:
```bash
git branch -d feature/my-feature
git push origin --delete feature/my-feature
```

## 6. Syncing a Fork
To bring your fork up to date with upstream:
```bash
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

## 7. Troubleshooting
| Issue | Solution |
|-------|----------|
| Merge conflict | Edit file, remove markers, `git add` -> `git commit` |
| Detached HEAD | `git checkout main` |
| Wrong commit message | `git commit --amend` |
| Undo staged change| `git restore --staged <file>` |

## 8. Best Practices
- Always branch from `main` before new work.
- Write meaningful commit messages (use verbs).
- Commit often, push when tested.
- Pull frequently to reduce merge conflicts.
- Keep PRs small and focused.
- Document every new workflow step.
