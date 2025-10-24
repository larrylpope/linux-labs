# Linux Command Cheat Sheet

## 1. Filesystem Navigation
| Command | Description | Example |
|----------|--------------|----------|
| `pwd` | Print working directory | `pwd` |
| `ls -la` | List files (including hidden) | `ls -la /home` |
| `cd` | Change directory | `cd ~/projects` |

---

## 2. File and Directory Management
| Command | Description | Example |
|----------|--------------|----------|
| `mkdir` | Create directory | `mkdir newdir` |
| `touch` | Create empty file | `touch notes.txt` |
| `mv` | Move or rename file | `mv old.txt new.txt` |
| `cp` | Copy file | `cp file1.txt backup.txt` |
| `rm` | Delete file | `rm file.txt` |
| `cat` | Display file contents | `cat notes.txt` |

---

## 3. Text search & Manipulation
| Command | Description | Example |
|----------|--------------|----------|
| `grep` | Search for pattern in files | `grep "ERROR" syslog.txt` |
| `find` | Locate files by name/type | `fine . -name "*.txt"` |
| `cut` | Extract columns from text | `cut -d',' -f2 data.csv` |
| `sort` | Sort lines | `sort users.txt` |
| `wc` | Count lines, words, bytes | `wc -l data.txt` |

---

## 4. Redirection & Piping
| Operator | Description | Example |
|----------|--------------|----------|
| `>` | Redirect and overwrite output | `echo "hi" > file.txt` |
| `>>` | Append output | `echo "next" >> file.txt` |
| `<` | Use file as input | `cat < file.txt` |
| `|` | Pipe output to another command | `grep "INFO" syslog.txt \| wc -l` |
| `tee` | Output and save simultaneously | `grep "a" fruits.txt \| tee matches.txt` |
| `&&` | Run next only if previous succeeds | `mkdir test && cd test` |
| `||` | Run next only if previous succeeds | `mkdir test && cd test` |
| `;` | Run sequentially regardless | `echo 1; echo 2` |

---

## 5. Useful Shortcuts
- `Ctrl + C` -> Stop current command
- `Ctrl + L` -> Clear screen
- `^ / ⌄` -> Command history
- `Tab` -> Autocomplete
- `!!` -> Repeat last command
- `!grep` -> Repeat last command starting with "grep"

---

## 6. Notes & Tips
- Always quote variables or strings containing spaces.
- Chain small, single-purpose tools for complex workflows.
- Document and version-control your notes in GitHub for continual reference.
