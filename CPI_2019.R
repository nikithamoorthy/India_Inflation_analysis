install.packages("ggplot2")
install.packages("readxl")
install.packages("dplyr")

library(ggplot2)
library(readxl)
library(dplyr)

data<- read_excel("C:/Users/Vidhya Moorthy/Downloads/CPI_2019_01.xlsx")
head(data)
summary(data)
colnames(data)
data$Category<- factor(data$Category, levels= data$Category)

p_lot<- ggplot(data, aes(Category, CPI, group= 1))+
  geom_line(colour= "blue", linewidth = 1)+
  geom_point(color= "red", size= 2)+
  labs(
    title = "CPI Inflation trends in 2019",
    subtitle= "Source: data.gov.in",
    x= "year",
    y= "CPI"
     ) + 
  theme_minimal()
p_lot