# MechaCar_Statistical_Analysis

## Overview

The goal of this exercise was to use R to identify statistical insights regarding the development of a fictional automobile prototype, the "MechaCar". R was used to: 

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population

In addition, a statistical study was proposed to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 


## Linear Regression to Predict MPG


The output of the linear regression can be seen here:

![15_deliv1_lm](https://user-images.githubusercontent.com/100863488/173578975-14b5c6c5-a6e1-419c-a79c-e138d2bd6aee.png)

Notes:
<b>Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</b>
* In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words, these are likely to have a significant impact on mpg values.

<b>Is the slope of the linear model considered to be zero? Why or why not?</b>
* The p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

<b>Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>
* The r-squared value is .71, which means this model predicts over 2/3 of the variability observed. This is significant, but it also suggests that there are additional variables affecting the result here.



## Summary Statistics on Suspension Coils

write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?


## T-Tests on Suspension Coils

briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.


## Study Design: MechaCar vs Competition
Deliverable 4 Instructions
Using your knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
