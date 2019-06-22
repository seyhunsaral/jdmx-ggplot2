# ========== Exercise 1 ==========
#        Basic Scatter Plot
#
# Data: World Happiness Report 2018


# load the ggplot2 library
library(ggplot2)

# load the data
happiness_data  <- readRDS("./data/happiness_data.rds")

# take a look at the data structure

str(happiness_data)

head(happiness_data)

library(ggrepel)
  ggplot(happiness_data, aes(freedom, gdp_per_capita)) +
#      geom_smooth(na.rm = TRUE, method = lm) +
  geom_point() +
    labs(title = "Freedom and GDP per Capita",
         y = "GDP per capita",
         x = "Freedom to make life choices") +
    facet_grid(~continent) +
    geom_text_repel(data = filter(happiness_data, happiness > 7 | happiness < 4), aes(label = country, color = if_else(happiness > 4, "happy", "unhappy")))  +
  scale_color_manual( values = c(happy = "darkgreen", unhappy = "red"))
#  geom_text(nudge_y = -0.01)
#  geom_text()

# Our first `ggplot2` graph
library(ggrepel)

happiness_regression  <- lm( happiness ~ gdp_per_capita , data = happiness_data)

happiness_data$lm_abs_residuals  <- abs(happiness_regression$residuals)

residual_90th  <- quantile(happiness_data$lm_abs_residuals, probs = 0.9)


library(ggsci)
library(ggrepel)
ggplot(happiness_data, aes(gdp_per_capita, happiness)) +
geom_point(aes(color = continent), size = 3) +
geom_smooth(method = "lm", se = FALSE)+
labs(x = "GDP per capita",
     y = "Happiness Score",
     color = "") +
  geom_text_repel(data = filter(happiness_data, lm_abs_residuals > residual_90th) ,aes(label = country), nudge_y = -0.06) +
scale_color_npg() +
  theme(legend.position="bottom")

#scale_x_continuous( limits = c(0,2.5)) +
#scale_y_continuous( limits = c(1,7.5))



