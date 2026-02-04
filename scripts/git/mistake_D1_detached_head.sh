#!/bin/bash
set -e

echo "Mistake C1 (Gitless): Partial commit prevented"

# Modify implementation
cat <<EOF >> app/calculator.py

def cube(a):
    return a * a * a
EOF

# Modify configuration
cat <<EOF >> config/settings.yaml
features:
  - cube
EOF

# Gitless commits all tracked changes
gl commit -m "Add cube operation"

# Push using Git
git push origin main
