#!/bin/bash
set -e

echo "Mistake B1 (Gitless): Unsafe branch switch blocked"

# Ensure clean start
gl branch switch main

# Create and switch to feature branch
gl branch create feature/unsafe-switch

# Make an uncommitted change
echo "# temporary debug change" >> app/calculator.py

# Attempt to switch branches with uncommitted changes
gl branch switch main
