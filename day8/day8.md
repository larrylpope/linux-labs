# Day 8 - Special Permission Bits

## Commands & Concepts
- `chmod 4755 file` -> add SUID (run as owner)
- `chmod 2755 dir` -> add SGID (inherit group)
- `chmod 1777 dir` -> add Sticky Bit (prevent others deleting files)
- `ls -l` -> shows `s` or `t` in permission string
- `stat file` -> detailed mode bits
- `/tmp` uses Sticky Bit
- `passwd` uses SUID

## Reflections
Learned how SUID and SGID elevate or preserve execution context, and how sticky bits protect shared directories. Experimented safely with test directories and understood when each is appropriate.
