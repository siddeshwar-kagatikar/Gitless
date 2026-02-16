#!/bin/bash
set -e

echo "Mistake B1 (Git): Unsafe branch switch with uncommitted changes"

# Ensure clean start on main
git checkout main

# Create and switch to a feature branch
git checkout -b feature/unsafe-switch

# Make an uncommitted change
echo "# temporary debug change" >> app/calculator.py

# Switch back to main WITHOUT committing
git checkout main

# Now commit on main (accidentally)
git commit -am "Accidental commit after unsafe branch switch"

# Push to trigger CI
git push origin main
