#!/bin/bash
# Run from your repo root
# Adds /md_pages prefix to all internal wiki page links

PAGES_DIR="md_pages"  # folder containing your Markdown pages

find "$PAGES_DIR" -type f -name "*.md" | while read -r file; do
  echo "Processing $file..."
  
  # Add /md_pages prefix to href links that start with /
  # Only modify links that are wiki pages (not images)
  sed -i.bak -E 's|(href=")/([^"/]+)"|\1/md_pages/\2"|g' "$file"
  
  # Remove backup file
  rm -f "$file.bak"
done

echo "✅ Done adding /md_pages prefix!"

