 Day 50 - Mini-Project: Two-Branch Repo and Merge

## Objective
Create a standalone Git repository with two branches and merge the feature branch into `main`.

## Steps

1. **Initialize repo**
```bash
mkdir ~/git-mini-day50
cd ~/git-mini-day50
git init -b main
```

2. Initial commit on `main`
```bash
echo "# Day 50 Mini Project Repo" > README.md
git add README.md
git commit -m "Day 50: Initial commit on main"
```

3. Create feature branch
```bash
git checkout -b feature-add-notes
echo "# Feature Notes" > feature_notes.md
git add feature_notes.md
git commit -m "Add feature_notes.md on feature-add-notes branch"
```

4. Main branch change
```bash
git checkout main
echo "- Main branch note for Day 50" >> README.md
git add README.md
git commit -m "Update README on main with Day 50 note"
```
5. Merge feature into main
```bash
git checkout main
git merge feature-add-notes
```

6. Verify
```bash
git log --oneline --graph --decorate -n 5
ls
cat README.md
cat feature_notes.md
```

## Observations
- Feature branch changes are now present on `main`.
- Merge completed without conflicts.
- History shows both main and feature commits as expected.

## Notes
- For simple features, merging directly from a short-lived branch into `main` keeps history clear.
- This pattern mirrors a basic GitHub Flow: Branch -> commit -> merge.
