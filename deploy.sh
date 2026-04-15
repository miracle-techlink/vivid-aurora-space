#!/bin/bash
set -e

export PATH=$PATH:/usr/local/go/bin
SITE_DIR="$(cd "$(dirname "$0")" && pwd)"
DEPLOY_DIR="/tmp/gh-pages-deploy"

echo "Building site..."
cd "$SITE_DIR"
for i in $(seq 1 20); do
  hugo --minify --baseURL "https://miracle-techlink.github.io/vivid-aurora-space/" > /tmp/hugo_build.log 2>&1
  grep -q "Total in" /tmp/hugo_build.log && echo "Build OK (try $i)" && break
  echo "Retry $i..."
done

if ! grep -q "Total in" /tmp/hugo_build.log; then
  echo "Build failed"
  cat /tmp/hugo_build.log
  exit 1
fi

echo "Deploying to gh-pages..."
cd "$DEPLOY_DIR"
rm -rf * .nojekyll 2>/dev/null || true
cp -r "$SITE_DIR/public/." .
touch .nojekyll

git add -A
git commit -m "deploy: $(date '+%Y-%m-%d %H:%M')" 2>/dev/null || echo "Nothing to commit"
git push origin gh-pages --force

echo "Done. https://miracle-techlink.github.io/vivid-aurora-space/"
