# Day 49 - .gitignore and Cleaning Untracked Files

## Objectives
- Use `.gitignore` to exclude temporary system files.
- Use `git clean` to remove untracked files safely.

## Key Commands
- `git status --ignored` -> preview ignored files
- `vim .gitignore` -> create ignore patterns
- `git clean -n -d` -> dry run clean
- `git clean -f -d` -> force clean
- `git clean -f -d -x` -> clean ignored files too

## Examples
```bash
*.log
*.tmp
test-output/
```

## Verification
- Ignored files not listed in `git status`
- Dry run confirmed before cleanup
- Workspace clean after `git clean -f`

## Notes
- Kepp `.gitignore` versioned with project
- Use `-x` only for complete resets
- Add global ignore for IDE settings and OS metadata.
