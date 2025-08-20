#!/bin/bash
# Run from repo root
# Fix wiki page links and file links in Markdown pages
PAGES_DIR="md_pages"

find "$PAGES_DIR" -type f -name "*.md" | while read -r file; do
  echo "Processing $file..."

  # 1. Remove all /md_pages from reference links
  sed -i.bak 's|/md_pages/||g' "$file"

  # 2. Fix md_pages/File: and md_pages/Media: links → files/<filename>
  sed -i.bak 's|href="md_pages/File:\([^"\]*\)"|href="/wiki_files/\1"|g' "$file"
  sed -i.bak 's|href="md_pages/Media:\([^"\]*\)"|href="/wiki_files/\1"|g' "$file"

  # 3. Add /md_pages prefix to remaining absolute page links (not files or media)
  sed -i.bak 's|href="/\([^"/][^"\]*\)"|href="/md_pages/\1"|g' "$file"
  sed -i.bak 's|href="\(md_pages/\)\(File:\|Media:\)||g' "$file"

  rm -f "$file.bak"
done

echo "All links fixed!"



