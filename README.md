# rf-lab-wiki
A migration/archive of the Martinos MR PIG RF Lab Wiki

- Exported MediaWiki pages as 1 .xml file using the built in export feature (Special pages: export) (note: the list of pages to export must match the page titles EXACTLY)
- Converted to Markdown format using https://github.com/philipashlock/mediawiki-to-markdown (note: this tool requires an older version of PHP, one that still has the 'each()' function     defined. PHP7.4 was used for this project.)
- pictures and pdfs (and any other uploaded files) from the original wikis have not been migrated yet, as I haven't found a more streamlined/automated process than just individually downloading them all then reuploading to github. UPDATE: files can be downloaded from Special pages: File list using a simple shell script. This is the script used for this project: 

#!/bin/bash
BASE_URL="https://rflab.martinos.org"
LIST_URL="$BASE_URL/index.php/Special:ListFiles?limit=500"
TMP_HTML="tmp_listfiles.html"

echo "Downloading list page..."
curl -s "$LIST_URL" -o "$TMP_HTML"

echo "Extracting file URLs and downloading files..."
grep -o '/images/[^"]*' "$TMP_HTML" \
  | sort -u \
  | sed "s|^|$BASE_URL|" \
  | wget -nc -i -

rm "$TMP_HTML"
echo "✅ All files downloaded."

