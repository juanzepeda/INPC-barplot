# packages

library(ggplot2)
library(ggthemes)

# data
var <- c(0.26, 0.19, 0.12, 0.31, 0.31, 0.34, -0.08, 0.24, -0.02, 0.42)
year <- c(2013:2022)
year <- as.character(year)
INPC <- data.frame(var, year)
class(year)

# plot
b <- ggplot(INPC, aes(x = year, y = var)) + 
  geom_col(width = 0.65,
           fill = "#404788FF") + 
  geom_label(aes(label = var),
             size = 2.8,
             colour = "#404788FF") + 
  theme_minimal() + 
  labs(title = "Índice Nacional de Precios al Consumidor",
       subtitle = "Variación porcentual quincenal en la primera quincena de agosto",
       x = "",
       y = "",
       caption = "Fuente: INEGI.")
b

ggsave(filename = "INPC-Agosto",
       plot = last_plot(),
       device = "pdf",
       units = c("in"),
       width = 6.6,
       height = 3.35)