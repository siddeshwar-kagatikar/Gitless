#!/bin/bash
set -e

echo "Mistake A1 (Gitless): New file auto-tracked"

# Create a new operation file
echo "def modulo(a, b): return a % b" > app/modulo.py

# Gitless automatically includes tracked files
gl commit -m "Add modulo operation"

# Push using Git (Gitless does not manage remotes)
git push origin main
