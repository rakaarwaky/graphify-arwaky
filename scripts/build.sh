#!/bin/bash
set -euo pipefail
echo ">>> wrapper build: graphify-arwaky"
echo ">>> checking upstream graphify source..."
if [ ! -d "graphify/.git" ]; then
  echo ">>> graphify/ missing .git - re-cloning upstream..."
  rm -rf graphify
  git clone --depth 1 https://github.com/Graphify-Labs/graphify graphify
fi
echo ">>> source ready: graphify/"
