#!/bin/bash
set -e

echo "Mistake A2 (Git): Test file created but not committed"

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

# Stage ONLY the implementation, forget the test
git add app/calculator.py
git commit -m "Add square function"

# Push to trigger CI
git push origin main
