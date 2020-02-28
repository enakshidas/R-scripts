#To create a trend line for a scatter plot with defined x and y-axes, titles and with dot-size chhanging 
#with the magnitude of the value. Color defined and opacity of the dots are also specified.
library(ggplot2)
library(readxl)
library(readr)
Line5 <- read_xlsx("C:/Users/Enakshi/Desktop/Data Viz/Line5.xlsx")
View(Line5)
ggplot(data = Line5,
       mapping = aes(x = Year, y = The)) + 
  geom_line(mapping = aes (color = IncomeGroups),
            size = 1, alpha = 1) +
  scale_color_brewer(palette = "Set1") +
  #labs(x = "Year",
   #    y = "Total Expenditure on Health per capita in million current US$",
   #    title = "Change in Total Health Expenditure By Global Income Groups",
   #    subtitle = "Has health expenditure increased uniformly across nations?",
   #    caption = "Source: Global Health Expenditure Database") +
  theme_minimal()
 