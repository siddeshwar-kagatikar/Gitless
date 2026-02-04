#!/bin/bash
set -e

echo "Mistake C1 (Git): Partial commit due to staging misuse"

# Modify implementation
cat <<EOF >> app/calculator.py

def cube(a):
    return a * a * a
EOF

# Modify configuration (required by CI)
cat <<EOF >> config/settings.yaml
features:
  - cube
EOF

# Stage ONLY the implementation, forget config
git add app/calculator.py
git commit -m "Add cube operation"

# Push to trigger CI
git push origin main
