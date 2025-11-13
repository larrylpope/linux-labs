# Day 48 - Git Tagging and Release Management

## Objective
Mark important checkpoints in Git history using tags.

## Key Commands
- `git tag` -> list tage
- `git tag v0.1` -> create lightweight
- `git tag -a v1.0 -m "message"` -> create annotated
-`git tag -a v0.9 <hash>` -> tag past commit
- `git push origin --tags` -> push tags
- `git tag -d v0.1` / `git push origin --delete v0.1` -> delete tag (local/remote)

## Verification
- Tags visible via `git tag` and GitHub UI
- Annotated tag contains metadata
- Pushed to remote and retrievable

## Best Practices
- Use semantic versioning (`v1.0.0`, v1.1.1`).
- Annotate public release tags.
- Never retag shared history without coordination.
- Combine tags with CHANGELOG for release notes.
