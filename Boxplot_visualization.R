#Generating a boxplot visualization concerning changes in adult mortality and life expectancy 
#over time for countries across various income groups classified accorfing to World Bank income groups
#defining title of axes and which variables to be displayed on x and y-axes
#specifying the opacity and colour of fill, level of opacity based on magnitude of variables mapped
library(ggplot2)
library(readxl)
library(readr)
Box3 <- read_xlsx("C:/Users/Enakshi/Desktop/Data Viz/Box3.xlsx")
View(Box3)
ggplot(Box3,
       mapping = aes(x = as.character(Year),
                     y = Value)) + 
  geom_boxplot(aes(fill = Indicator), alpha = 0.8, width =0.5) +
  scale_fill_manual (values = c("purple", "orange"),
                     labels = c("Life Expectancy", "Adult Mortality")) +
  labs(x = "",
      y = "",
      title = "Trend in Global Health Indicators",
      subtitle = "Has general health status improved globally?",
      caption = "Source: WHO Database") +
  theme (strip.background = element_blank())
  #theme_minimal()
  #dev.cur()
  #dev.off()
  
  