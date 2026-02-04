#!/bin/bash
set -e

echo "Mistake A1 (Git): New file created but not committed"

# Create a new operation file
echo "def modulo(a, b): return a % b" > app/modulo.py

# Forget to stage the new file
git commit -m "Add modulo operation"

# Push to trigger CI
git push origin main
