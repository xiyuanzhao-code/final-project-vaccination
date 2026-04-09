# Final Project: Adolescent Vaccination Coverage

## Overview
This project analyzes adolescent vaccination coverage in the United States using a vaccination coverage dataset for adolescents aged 13–17 years.

## Repository Contents

- `data/vaccination_coverage.csv`: raw data
- `code/00_load_clean_data.R`: imports and cleans the data
- `code/01_make_table.R`: creates the required table
- `code/02_make_figure.R`: creates the required figure
- `code/03_render_report.R`: renders the final report
- `final_report.Rmd`: source file for the final report
- `renv.lock`: lockfile recording package versions
- `renv/`: project-specific renv files
- `Makefile`: builds the report and restores the package environment
- `output/`: stores generated files

## How to Synchronize the Package Environment

First restore the project package environment with:

```bash
make install