#!/bin/bash
# Run this from your repo root (where "pages/" and "files/" folders are)

PAGES_DIR="md_pages"
FILES_DIR="wiki_files"

find "$PAGES_DIR" -type f -name "*.md" | while read -r file; do
  echo "Fixing links in $file"

  # 1. Fix internal wiki links to pages
  #    <a href="/Some_Page"> → (pages/Some_Page.md)
  sed -i.bak -E "s|<a href=\"/([A-Za-z0-9_:-]+)\"[^>]*>|[\1]($PAGES_DIR/\1.md)|g" "$file"

  # 2. Fix links to files (images, txt, pdf, etc.)
  #    <a href="/images/..."> → (files/...)
  sed -i.bak -E "s|<a href=\"/images/([^\"]+)\"[^>]*>|[\1]($FILES_DIR/\1)|g" "$file"

  # 3. Remove leftover closing </a> tags (because we turned them into Markdown links)
  sed -i.bak -E "s|</a>||g" "$file"

  # Cleanup backup files
  rm -f "$file.bak"
done

echo "✅ All links rewritten!"
