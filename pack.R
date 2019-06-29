list.of.packages <- c("ggplot2",
                      "dplyr",
                      "readr",
                      "rworldmap",
                      "ggrepel",
                      "ggthemes",
                      "forcats")


new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


# Method was taken from https://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them#4090208
