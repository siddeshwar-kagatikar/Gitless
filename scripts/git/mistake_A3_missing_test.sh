#!/bin/bash
set -e

echo "Mistake A3 (Git): Configuration file modified but not committed"

# Modify configuration
cat <<EOF > config/settings.yaml
app_name: calculator
version: 2.0
precision: high
EOF

# Forget to stage the config file
git commit -m "Update configuration version"

# Push to trigger CI
git push origin main
