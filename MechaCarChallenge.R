#import dependencies
library(dplyr)
library(tidyverse)
#Load CSV file
mpg_tbl <- read_csv('MechaCar_mpg.csv')
head(mpg_tbl)
#perform linear regression
model <- summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_tbl))

#import suspension_coil file
#Load CSV file
susp_coil <- read_csv('Suspension_Coil.csv')
head(susp_coil)
total_summary <- susp_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI))

lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI))

plt <- ggplot(susp_coil, aes(x=PSI))
plt + geom_density()
t.test(susp_coil$PSI, mu=1500)
lot1 <- t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot == "Lot1"), mu=1500)

lot2 <- t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot == "Lot2"), mu=1500)

lot3 <- t.test(subset(susp_coil$PSI, susp_coil$Manufacturing_Lot == "Lot3"), mu=1500)

