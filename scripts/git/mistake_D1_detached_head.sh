#!/bin/bash
set -e

echo "Mistake D1 (Git): Detached HEAD commit"

# Ensure we are on main
git checkout main

# Go to detached HEAD
git checkout HEAD~1

# Make a change
echo "# hotfix applied in detached HEAD" >> app/calculator.py

# Commit in detached HEAD
git commit -am "Hotfix committed in detached HEAD"

# Try to push to main
git push origin main
