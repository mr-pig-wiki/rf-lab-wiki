# RF Lab wiki migration report

The `hugo-content` branch adds a native Hugo content tree. The original
MediaWiki extraction in `md_pages/` and downloads in `wiki_files/` remain as
source archives but are not published by the main site.

- Eleven archived pages are available under `/rf-lab/`.
- Referenced images are stored in their Hugo page bundles.
- Archived ZIP, PDF, CAD, and similar downloads are not published. Pages mark
  those downloads as pending until the responsible PI or project owner adds an
  authoritative external link.
- The source export omitted the referenced Current Driver and Multi-coil B0
  Shimming pages, so the site includes explanatory placeholders for them.
- Legacy HTML image links were converted to portable Markdown.
- The missing ASL coil image and placeholder design link were removed rather
  than publishing broken local URLs.
