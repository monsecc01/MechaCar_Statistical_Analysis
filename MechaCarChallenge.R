library(dplyr)

## DELIVERABLE 1. Linear Regression to Predict MPG ##

# Technical Analysis
mechaCar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression for mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar))
# Adjusted R-squared:  0.6825
# p-value: 5.35e-11

## DELIVERABLE 2. Summary Stats on Suspension Coils ##
# summary data frame
suspensionCoil <- read.csv(file = "Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
total_summary <- suspensionCoil %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI))

#lot summary data frame
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI), median=median(PSI), variance=var(PSI), sd=sd(PSI))

