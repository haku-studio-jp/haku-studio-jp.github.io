#!/bin/bash
# HAKU STUDIO デプロイスクリプト
REPO="$HOME/Downloads/haku-studio-jp.github.io"
DL="$HOME/Downloads"

# 更新対象ファイル
FILES=(index.html sns-service.html sns-banner.html ai-service.html ai-banner.html)

cd "$REPO"

for f in "${FILES[@]}"; do
  if [ -f "$DL/$f" ]; then
    cp "$DL/$f" "$REPO/$f"
    echo "✓ コピー: $f"
  fi
done

git add .
git status --short

read -p "このままpushしますか？ (y/n): " confirm
if [ "$confirm" = "y" ]; then
  git commit -m "update: $(date '+%Y-%m-%d %H:%M')"
  git push
  echo "✅ push完了"
fi
