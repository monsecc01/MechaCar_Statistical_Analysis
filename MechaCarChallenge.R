library(dplyr)

## Deliverable 1. Linear Regression to Predict MPG ##

# Technical Analysis
mechaCar <- read.csv(file = "MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

# Perform linear regression for mpg
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechaCar))
# Adjusted R-squared:  0.6825
# p-value: 5.35e-11

