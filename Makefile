all: final_report.html

install:
	Rscript -e "renv::restore(prompt = FALSE)"

output/cleaned_data.rds: code/00_load_clean_data.R data/vaccination_coverage.csv
	Rscript code/00_load_clean_data.R

output/summary_table.rds: code/01_make_table.R output/cleaned_data.rds
	Rscript code/01_make_table.R

output/vaccination_plot.png: code/02_make_figure.R output/cleaned_data.rds
	Rscript code/02_make_figure.R

final_report.html: final_report.Rmd code/03_render_report.R output/summary_table.rds output/vaccination_plot.png
	Rscript code/03_render_report.R