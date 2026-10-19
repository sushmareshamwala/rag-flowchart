#!/usr/bin/env bash
# Copy the latest RAG flowchart here and push it live to GitHub Pages (personal account sushmareshamwala).
# Run:  bash smp/project/rag-flowchart/publish.sh
set -e
cd "$(dirname "$0")"
cp ../../learn/week-02/rag/flowchart.html index.html
git add -A
git commit -q -m "Update flowchart" || { echo "No changes to publish"; exit 0; }
# gh's active account on this laptop is the work one, so push with the personal account's token
export GH_TOKEN=$(gh auth token --user sushmareshamwala)
git -c credential.helper= -c 'credential.helper=!f() { echo username=sushmareshamwala; echo "password=$GH_TOKEN"; }; f' push -q
echo "Pushed. Live in about a minute: https://sushmareshamwala.github.io/rag-flowchart/"
