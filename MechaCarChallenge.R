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

## DELIVERABLE 3. T-Test on Suspension Coils ##
# t.test
t.test(suspensionCoil$PSI, mu= 1500)

Lot1 = subset(suspensionCoil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(suspensionCoil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(suspensionCoil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500) 
# p-value = 1
t.test(Lot2$PSI, mu = 1500)
# p-value = 0.6072
t.test(Lot3$PSI, mu = 1500)
# p-value = 0.04168

