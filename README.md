# MechaCar Statistical Analysis

## Sources

Data Source:  [MechaCar_mpg.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/MechaCar_mpg.csv) | 
[Suspension_Coil.csv](https://github.com/monsecc01/MechaCar_Statistical_Analysis/blob/621f72d1094689ed2c9b467a1d42d3dcff991481/Resources/Suspension_Coil.csv)

Software: R Version 4.1.0, RStudio Version 1.4.1717

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  * A non-random variance in a data set (variance of the linear regression) is equal to 0. *Vehicle Weight & Spoiler Angle* provided variances close to 0 in the dataset.
* Is the slope of the linear model considered to be zero? Why or why not?
  * No, slope of the linear model can be concluded to be non-zero. The null hypthesis is that the slope = 0, but the low p-value (< 0.05) indicatates that we can reject the null hypothesis. In addition, the coefficients > 0 indicate a non-zero slope.
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  * The multiple R-squared value is 0.7149, showing a strong fit of the linear model with the data. The adjusted R-squared value shows a slightly lower value of 0.6825, but it can still be considered a strong fit. We can conclude that the linear model predicts the mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils
Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

# Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
* What metric or metrics are you going to test?
* What is the null hypothesis or alternative hypothesis?
* What statistical test would you use to test the hypothesis? And why?
* What data is needed to run the statistical test?
