FROM rocker/tidyverse:4.5.1

WORKDIR /home/rstudio/project

COPY . .

RUN Rscript -e "install.packages('renv', repos='https://cloud.r-project.org')"
RUN Rscript -e "renv::restore(prompt = FALSE)"

CMD ["sh", "-c", "make final_report.html && mkdir -p report && cp final_report.html report/"]