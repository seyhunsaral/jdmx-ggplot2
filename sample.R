library(ggplot2)
set.seed(2019)
my_data  <- data.frame( class = c(rep("A",10),rep("B",10)),
                        study_hours = round(rnorm(20, mean = 24, sd = 6)))

my_data$score  <- round(my_data$study_hours * rnorm(20, mean = 2, sd = 0.3)) + round(if_else(my_data$class == "A", rnorm(20, mean = 8, sd = 2), 0))


ggplot(my_data, aes(x = study_hours, y = score, color = class)) +
#  geom_jitter(size = 3) +
  geom_point()  +
  geom_smooth(method = "lm", se = FALSE, fullrange = TRUE) +
  theme_bw() 
#  geom_smooth(method = "lm" )
ggsave("sample.png")

 
