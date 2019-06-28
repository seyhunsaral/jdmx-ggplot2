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




# ==== Step 2 ===
#    Add geom_point() without any properties




# ==== Step 3 ===
#    Add an aesthethic function in the function geom_point with the `continent` mapped to aesthethics `color`



# === Step 4 ====
# Add following scales to your ggplot object. Set the limits of `scale_y_continious` to 0 and 8, while adding breakpoints from 0 to 8


scale_x_continuous(name = "Log GDP per Capita") +
scale_y_continuous(name = "Happiness index", limits = ..., breaks = ...) 
 

# === Step 5 ===
# Set the scale_color_brewer() to the palette "Set1". Set the name to
# an empty string (name = "")
# Feel free to try other palettes
# Accent, Dark2, Paired, Pastel1, Pastel2, Set1, Set2, Set3




# === Step 6 ===
# Add a linear regression line using geom_smooth() without the errors. Set the line color to black.






# === Step 7 ===
# Set the geom_point size to 3 and transparency (alpha) to 0.5
# Please note that those two should be outside of the aesthetic
# function as they are properties, not mappings

# Add theme_bw() at the end of the code.



# === BONUS ===
# add facets for continents



