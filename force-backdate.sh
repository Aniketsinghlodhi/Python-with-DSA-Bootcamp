#!/bin/bash

FILE="restore.txt"
touch $FILE

echo "Restoring GitHub streak..."

# 09 Dec 2025
echo "restore 09 dec 2025" >> $FILE
export GIT_AUTHOR_DATE="2025-12-09T12:00:00Z"
export GIT_COMMITTER_DATE="2025-12-09T12:00:00Z"
git add $FILE
git commit --date="2025-12-09T12:00:00Z" -m "restore streak for 09 Dec 2025"

# 10 Dec 2025
echo "restore 10 dec 2025" >> $FILE
export GIT_AUTHOR_DATE="2025-12-10T12:00:00Z"
export GIT_COMMITTER_DATE="2025-12-10T12:00:00Z"
git add $FILE
git commit --date="2025-12-10T12:00:00Z" -m "restore streak for 10 Dec 2025"

# Push commits
git push origin main

echo "Done! Now check GitHub contributions."
