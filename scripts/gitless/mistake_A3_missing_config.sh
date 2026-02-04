#!/bin/bash
set -e

echo "Mistake A3 (Gitless): Configuration auto-tracked"

# Modify configuration
cat <<EOF > config/settings.yaml
app_name: calculator
version: 2.0
precision: high
EOF

# Gitless commits all tracked changes (including config)
gl commit -m "Update configuration version"

# Push using Git
git push origin main
