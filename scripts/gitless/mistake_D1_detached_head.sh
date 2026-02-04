#!/bin/bash
set -e

echo "Mistake D1 (Gitless): Detached HEAD state prevented"

# Attempt to commit without being on a branch
gl commit -m "Hotfix attempt"
