#To create a heat map reflecting intensity of MDR-TB incidence over time across a developing country
#specifying the color scale, gradient, axes variables, titles, width of color bin. 
library(ggplot2)
library(readxl)
library(readr)
library(forcats)
library(RColorBrewer)
TB3 <- read_xlsx("C:/Users/Enakshi/Desktop/Data Viz/TB3.xlsx")
TB3$Country <- factor(TB3$Country)
View(TB3)
TB3$Country.fac.rev <- fct_rev(TB3$Country)
ggplot(data = TB3) +
  geom_tile(mapping = aes(x = Year,
                          y = Country.fac.rev,
                          fill = Confirmed)) +
  #scale_color_brewer(palette = "Set1")
  scale_x_continuous(breaks = seq(2012, 2017)) +
  scale_fill_gradient(low = "indianred",
                      high = "indianred4",
                      breaks = c(0,5000,10000,15000,20000,25000,30000,35000,40000),
                      limits = c(0,40000),
                      name = "Cases") +
  theme(axis.title.x = element_blank(),
        axis.title.y = element_blank(),
        axis.ticks.x = element_blank(),
        axis.ticks.y = element_blank(),
        panel.background = element_blank()) +
  labs(title = "Incidence of Multidrug Resistant Tuberculosis (MDR)",
       subtitle = "Are we doing enough to combat MDR-TB?",
       caption = "Source: WHO's Strategic & Technical Advisory Group for TB")

        
  
  
