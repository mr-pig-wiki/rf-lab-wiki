#!/bin/bash
# Script to change all href="files/..." to href="/wiki_files/..." in Markdown files
PAGES_DIR="md_pages"

find "$PAGES_DIR" -type f -name "*.md" | while read -r file; do
  echo "Processing $file..."
  sed -i.bak 's|href="files/|href="/wiki_files/|g' "$file"
  rm -f "$file.bak"
done

echo "✅ All file links updated to /wiki_files/!"