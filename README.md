# MechaCar Statistical Analysis

## Sources

Data Source:  [MechaCar_mpg.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/MechaCar_mpg.csv) | 
[Suspension_Coil.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/Suspension_Coil.csv)

Software: R Version 4.1.0, RStudio Version 1.4.1717

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * A non-random variance in a data set (variance of the linear regression) is equal to 0. *Vehicle Weight & Spoiler Angle* provided variances close to 0 in the dataset.
* Is the slope of the linear model considered to be zero? Why or why not?
  * No, the slope of the linear model can be concluded to be non-zero. The null hypthesis is that the slope = 0, but the low p-value (< 0.05) indicatates that we can reject the null hypothesis. In addition, the coefficients > 0 indicate non-zero slopes.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * The multiple R-squared value is 0.7149, showing a strong fit of the linear model with the data. The adjusted R-squared value shows a slightly lower value of 0.6825, but it can still be considered a strong fit. We can conclude that the linear model predicts the mpg of MechaCar prototypes effectively.

![p value](https://user-images.githubusercontent.com/81447450/125151962-89f18d00-e10f-11eb-8eb4-5bef3780bfa8.PNG)


## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall variance for all lots of suspension coils was found to be 62.29 lbs per square inch, well below the max specifications. 
When we look at each individual lot, Lot 1 and Lot 2 have a variance of 0.9795918 and 7.4693878 respecively. Both lots meet specifications. However, Lot 3 was observed to have a variance of 170.2861224. This lot greatly excedes the max load limit and should be inspected further. 

![total variance](https://user-images.githubusercontent.com/81447450/125152269-27998c00-e111-11eb-9492-3d09fbb3fda5.PNG)
![lot variance](https://user-images.githubusercontent.com/81447450/125152275-2d8f6d00-e111-11eb-91a0-855a480d9fac.PNG)


## T-Tests on Suspension Coils

A series of one sample T-tests were performed on suspension coils to determine the true mean of PSI measurements. The null hypothesis is that true mean = 1500.
The T-test for all lots gave us a p-value of .06, with a level of significance of 0.05 we cannot reject the null hypothesis. 

When one sample T-tests were performed per lot, we see different p-values.
* Lot 1 has a p-value of 1, therefore the null hypothesis is not rejected and the real mean for samples in lot 1 is close to 1500.
* Lot 2 has a p-value of 0.60, therefore the null hypotheses is not rejected and the real mean for samples in lot 1 is close to 1500
* Lot 3 has a p-value of 0.04 therefore we *reject* the null hypothesis and assume the real hypothesis is 1496.14.


# Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
* What metric or metrics are you going to test?
* What is the null hypothesis or alternative hypothesis?
* What statistical test would you use to test the hypothesis? And why?
* What data is needed to run the statistical test?
