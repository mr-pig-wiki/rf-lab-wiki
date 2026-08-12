# RF Lab wiki migration report

The `hugo-content` branch adds a native Hugo content tree while preserving the
original MediaWiki extraction in `md_pages/` and downloads in `wiki_files/`.

- Eleven archived pages are available under `/rf-lab/`.
- Download assets are mounted under `/rf-lab/files/` without duplication.
- The source export omitted the referenced Current Driver and Multi-coil B0
  Shimming pages, so the site includes explanatory placeholders for them.
- A small number of links still target external services where no matching
  local asset was present. The missing ASL coil image and placeholder design
  link were removed rather than publishing broken local URLs.
