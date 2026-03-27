library(tidyverse)

data <- readRDS("output/cleaned_data.rds")

plot_data <- data %>%
  filter(!is.na(estimate_percent)) %>%
  group_by(vaccine_sample) %>%
  summarise(
    mean_estimate = mean(estimate_percent, na.rm = TRUE),
    .groups = "drop"
  )

p <- ggplot(plot_data, aes(x = reorder(vaccine_sample, mean_estimate), y = mean_estimate)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Average Adolescent Vaccination Coverage by Vaccine",
    x = "Vaccine",
    y = "Average Coverage (%)"
  ) +
  theme_minimal()

ggsave("output/vaccination_plot.png", p, width = 8, height = 6)