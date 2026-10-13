# ELSP-ARK Tutorials Tutorials

Four linked tutorials introducing ecological data analysis in R.

**Tutorial website:**  
https://cristianna.github.io/elsp_ark_tutorials/

## Sessions

- Session 0: Getting started
- Session 1: Diversity and regression
- Session 2: RDA and indicator species analysis
- Session 3: Joint species distribution models

The tutorial content is under development.

## Repository contents

- `index.Rmd`: website homepage.
- `session0.Rmd` to `session3.Rmd`: tutorial source files.
- `_site.yml`: shared website configuration.
- `scripts/`: original R scripts.
- `data/`: tutorial input datasets.
- `build_site.R`: local rendering script.
- `docs/`: rendered website published through GitHub Pages.

## Build the website locally

Open the repository as an RStudio Project.

Install the rendering packages if needed:

```r
install.packages(c("rmarkdown", "knitr"))
```

Additional analysis packages will be documented in each tutorial.

From the repository's top-level directory, run:

```r
source("build_site.R")
```

Open `docs/index.html` in a browser and check the pages and navigation.

## Publish updates

After editing the source files:

1. Run `source("build_site.R")`.
2. Check the rendered website.
3. Commit the source changes and the complete `docs/` folder.
4. Push to the branch configured for GitHub Pages.