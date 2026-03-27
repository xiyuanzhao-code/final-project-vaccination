library(tidyverse)
library(janitor)

data <- read_csv("data/vaccination_coverage.csv")

clean_data <- data %>%
  clean_names()

saveRDS(clean_data, "output/cleaned_data.rds")