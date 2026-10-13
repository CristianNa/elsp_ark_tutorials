# Run from the repository's top-level directory.

if (!file.exists("_site.yml") || !file.exists("index.Rmd")) {
  stop("Run this script from the repository's top-level directory.")
}

if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Install rmarkdown before building the website.")
}

if (!rmarkdown::pandoc_available()) {
  stop("Pandoc was not found. Run from RStudio or install Pandoc.")
}

# Render all website pages and copy their supporting files into docs/.
rmarkdown::render_site()

# Tell GitHub Pages to serve the rendered site without Jekyll processing.
nojekyll_file <- file.path("docs", ".nojekyll")

if (!file.exists(nojekyll_file)) {
  if (!file.create(nojekyll_file)) {
    stop("Could not create docs/.nojekyll.")
  }
}

message("Website ready. Preview docs/index.html before committing.")