#!/bin/bash
set -e

echo "Mistake A2 (Gitless): Test file auto-tracked"

# Add a new function to calculator
cat <<EOF >> app/calculator.py

def square(a):
    return a * a
EOF

# Create corresponding test file
cat <<EOF > tests/test_square.py
from app.calculator import square

def test_square():
    assert square(4) == 16
EOF

# Gitless commits all tracked changes
gl commit -m "Add square function with tests"

# Push using Git
git push origin main
