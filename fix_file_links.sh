# A) Absolute wiki file URLs (originals or thumbs) → ../files/<filename>
find md_pages/ -type f -name "*.md" -exec \
  sed -i '' -E \
  's~\]\((https?://)?rflab\.martinos\.org/images/(thumb/)?[0-9a-fA-F]/[0-9a-fA-F]{2}/([^)/]+\.(png|jpe?g|gif|svg|pdf|zip|txt|docx?|pptx?|xlsx))(/[^)]*)?\)~](../files/\3)~gI' \
  {} +

# B) Any remaining relative links to those file types → normalize into ../files/
find md_pages/ -type f -name "*.md" -exec \
  sed -i '' -E \
  's~\]\(((\.\./wiki_files/)?([^):]*\.(png|jpe?g|gif|svg|pdf|zip|txt|docx?|pptx?|xlsx)))\)~](../files/\3)~gI' \
  {} +
