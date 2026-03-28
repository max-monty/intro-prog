#!/bin/bash
# Sync mini quizzes and unit quizzes from intro-prog to the assessments repo.
# Called by the post-commit git hook when quiz files change.

INTRO_PROG="/Users/mmontgomery14/Documents/Processing/intro-prog"
ASSESSMENTS="/Users/mmontgomery14/Developer/assessments"

# Sync mini quizzes (excluding Unit Quizzes subfolder and .DS_Store)
rsync -a --delete \
  --exclude='.DS_Store' \
  --exclude='Unit Quizzes' \
  "$INTRO_PROG/Mini_Quizzes/" "$ASSESSMENTS/intro/"

# Sync unit quizzes and answer keys
rsync -a --delete \
  --exclude='.DS_Store' \
  "$INTRO_PROG/Quizzes/" "$ASSESSMENTS/intro/Unit Quizzes/"

# Commit and push if there are changes
cd "$ASSESSMENTS"
if ! git diff --quiet || ! git diff --cached --quiet || [ -n "$(git ls-files --others --exclude-standard)" ]; then
  git add -A
  git commit -m "Sync intro assessments from intro-prog"
  git push
fi
