# ========== Exercise 1 ==========
# Data: World Happiness Report 2018

# loading the ggplot2 library and 
library(ggplot2)

# loading the data
happiness_data  <- readRDS("./data/happiness_data.rds")

# Let's take a look at the data structure
str(happiness_data)

head(happiness_data)


# Note: We add up to our plot in each step. You can copy paste the code in previous step in each step

# ==== Step 1 ===
#     Initialize a canvas with the data happiness_data and the aesthethic properties:
#     - `gdp_per_capita` is mapped to x 
#     - `happiness` is mapped to y

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness))


# ==== Step 2 ===
#    Add geom_point() without any properties

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point()



# ==== Step 3 ===
#    Add an aesthethic function in the function geom_point with the `continent` mapped to aesthethics `color`

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point( aes(color = continent) )


# === Step 4 ====
# Add following scales to your ggplot object. Set the limits of `scale_y_continious` to 0 and 8, while adding breakpoints from 0 to 8

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point(aes(color = continent)) +
  scale_x_continuous(name = "Log GDP per Capita") +
  scale_y_continuous(name = "Happiness index", limits = c(0,8), breaks = 0:8) +
 

# === Step 5 ===
# Set the scale_color_brewer() to the palette "Set1". Set the name to
# an empty string (name = "")
# Feel free to try other palettes
# Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, Set3


ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point(aes(color = continent)) +
  scale_x_continuous(name = "Log GDP per Capita") +
  scale_y_continuous(name = "Happiness index", limits = c(0,8), breaks = 0:8) +
  scale_color_brewer(name = "", palette = "Set1") 


# === Step 6 ===
# Add a linear regression line using geom_smooth() without the errors. Set the line color to black.

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point(aes(color = continent)) +
  geom_smooth(method = "lm", color = "black", se = FALSE) +
  scale_x_continuous(name = "Log GDP per Capita") +
  scale_y_continuous(name = "Happiness index", limits = c(0,8), breaks = 0:8) +
  scale_color_brewer(name = "", palette = "Set1") 

# === Step 7 ===
# Set the geom_point size to 3 and transparency (alpha) to 0.5
# Please note that those two should be outside of the aesthetic
# function as they are properties, not mappings

# Add theme_bw() at the end of the code.
ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point(aes(color = continent), alpha = 0.5, size = 3) +
  geom_smooth(method = "lm", color = "black", se = FALSE) +
  scale_x_continuous(name = "Log GDP per Capita") +
  scale_y_continuous(name = "Happiness index", limits = c(0,8), breaks = 0:8) +
  scale_color_brewer(name = "", palette = "Set1") +
  theme_bw()


# === BONUS ===
# add facets for continents

ggplot(happiness_data, aes(x = gdp_per_capita, y = happiness)) +
  geom_point(aes(color = continent), alpha = 0.5, size = 3) +
  geom_smooth(method = "lm", color = "black", se = FALSE) +
  scale_x_continuous(name = "Log GDP per Capita") +
  scale_y_continuous(name = "Happiness index", limits = c(0,8), breaks = 0:8) +
  scale_color_brewer(name = "", palette = "Set1") +
  theme_bw() +
  facet_wrap( ~ continent)


