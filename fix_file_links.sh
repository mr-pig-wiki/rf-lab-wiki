#!/bin/bash
# Run from repo root
# Fix wiki page links and file links in Markdown pages
PAGES_DIR="md_pages"


find "$PAGES_DIR" -type f -name "*.md" | while read -r file; do
  echo "Processing $file..."

  # 1. Remove all /md_pages from reference links
  sed -i.bak 's|md_pages||g' "$file"

  # Remove multiple consecutive slashes in file/image links, leaving only a single slash
  sed -i.bak 's|href="/\{2,\}|href="/|g' "$file"

  # 2. Fix /File:, File:, /Media:, and Media: links → /wiki_files/<filename> (do this before adding /md_pages)
  sed -i.bak 's|href="\(/\?\)File:\([^"\]*\)"|href="/wiki_files/\2"|g' "$file"
  sed -i.bak 's|href="\(/\?\)Media:\([^"\]*\)"|href="/wiki_files/\2"|g' "$file"

  # 3. Normalize page links to start with a slash, then add /md_pages prefix to remaining absolute page links (not files or media)
  # Add leading slash to hrefs that don't have one (but not files or media)
  sed -i.bak 's|href="\([^/][^"\]*\)"|href="/\1"|g' "$file"


  # Now add /md_pages prefix to links that start with a single slash and are not files, media, already /md_pages, or /wiki_files (BSD sed compatible)
  sed -i.bak '/href="\/md_pages\|\/wiki_files\//!s|href="/\([^"/][^"\]*\)"|href="/md_pages/\1"|g' "$file"

  # Remove /md_pages if it appears before /wiki_files (fixes file/image links)
  sed -i.bak 's|/md_pages/wiki_files/|/wiki_files/|g' "$file"

  rm -f "$file.bak"
done

echo "All links fixed!"



