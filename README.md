# MechaCar Statistical Analysis

## Sources

Data Source:  [MechaCar_mpg.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/MechaCar_mpg.csv) | 
[Suspension_Coil.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/Suspension_Coil.csv)

Software: R Version 4.1.0, RStudio Version 1.4.1717

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * The variance of a non-random variable in a data set (variance of the linear regression) is equal to 0. *Intercept, vehicle_length, and ground_clearance coeeficients* were identified to provide non-randmom amount of variance.
* Is the slope of the linear model considered to be zero? Why or why not?
  * No, the slope of the linear model can be concluded to be non-zero. The null hypthesis is that the slope = 0, but the low p-value (< 0.05) indicatates that we can reject the null hypothesis. In addition, the coefficients > 0 indicate non-zero slopes.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * The multiple R-squared value is 0.7149, showing a strong fit of the linear model with the data. The adjusted R-squared value shows a slightly lower value of 0.6825, but it can still be considered a strong fit. We can conclude that the linear model predicts the mpg of MechaCar prototypes effectively.

![p value](https://user-images.githubusercontent.com/81447450/125151962-89f18d00-e10f-11eb-8eb4-5bef3780bfa8.PNG)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall variance for all lots of suspension coils was found to be 62.29 lbs per square inch, well below the max specification. 
When we look at each individual lot, Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respecively. Both lots meet specification. However, Lot 3 was observed to have a variance of 170.2861224, failing to meet specifications. This lot greatly excedes the max load limit and should be inspected further. 

![total variance](https://user-images.githubusercontent.com/81447450/125152269-27998c00-e111-11eb-9492-3d09fbb3fda5.PNG)
![lot variance](https://user-images.githubusercontent.com/81447450/125152275-2d8f6d00-e111-11eb-91a0-855a480d9fac.PNG)


## T-Tests on Suspension Coils

A series of one sample T-tests were performed on suspension coils to determine the true mean of PSI measurements. The null hypothesis is that true mean = 1500.
The T-test for all lots gave us a p-value of .06, with a level of significance of 0.05 we cannot reject the null hypothesis. 

![t-test](https://user-images.githubusercontent.com/81447450/125154145-3a668d80-e11e-11eb-88e7-55e42cf03497.PNG)

When one sample T-tests were performed per lot, we see different p-values.
* Lot 1 has a p-value of 1, therefore the null hypothesis is not rejected and the real mean for samples in lot 1 is close to 1500.
* Lot 2 has a p-value of 0.60, therefore the null hypotheses is not rejected and the real mean for samples in lot 2 is close to 1500
* Lot 3 has a p-value of 0.04 therefore we *reject* the null hypothesis and assume the real hypothesis is closer to 1496.14.

![lot t tests](https://user-images.githubusercontent.com/81447450/125154119-0db27600-e11e-11eb-87f4-2cccbc849114.PNG)


# Study Design: MechaCar vs Competition

To statistically analyze how the MechaCar performs against other vehicles in the market we could compare environmental impact related metrics. We could perform a study to find a linear regression between C02 emissions and fuel efficiency (MPG) among our top 5 competitors. In today's market, fuel efficient cars are highly sought after due to the high gass prices and the environmental impact of cars. It's also known that the more fuel efficient a car is, the less the environmental impact so we would expect a linear relationship. To obtain the linear regression we could obtain the following metrics:
* cost
* fuel eficiency (highway or city) in MPG, 
* CO2 emissions
* horse power

A possible null hypothesis (H0) could be that the slope of the linear regression is negative (<0), meaning that the higher the MPG the lower the CO2 emissions. The alternative hypothesis could be that the slope is equal to or greater than 0. Useful data to help with this analysis would be the EPA definition of "fuel efficient" vehicles and acceptable C02 emissions.
