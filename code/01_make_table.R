library(tidyverse)

data <- readRDS("output/cleaned_data.rds")

summary_table <- data %>%
  filter(!is.na(estimate_percent)) %>%
  group_by(vaccine_sample) %>%
  summarise(
    mean_estimate = mean(estimate_percent, na.rm = TRUE),
    n = n(),
    .groups = "drop"
  )

saveRDS(summary_table, "output/summary_table.rds")