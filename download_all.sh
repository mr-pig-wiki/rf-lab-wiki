#!/bin/bash
BASE_URL="https://rflab.martinos.org"
LIST_URL="$BASE_URL/index.php/Special:ListFiles?limit=500"
TMP_HTML="tmp_listfiles.html"
OUTPUT_DIR="wiki_files"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

echo "📄 Downloading list page..."
curl -s "$LIST_URL" -o "$TMP_HTML"

echo "📥 Extracting file URLs and downloading files..."
grep -o '/images/[^"]*' "$TMP_HTML" \
  | sort -u \
  | sed "s|^|$BASE_URL|" \
  | wget -nc -P "$OUTPUT_DIR" -i -

rm "$TMP_HTML"
echo "✅ All files downloaded into: $OUTPUT_DIR"


