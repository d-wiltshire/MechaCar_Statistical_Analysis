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
* The p-value of our linear regression analysis is 5.35 x 10<sup>-11</sup>, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

<b>Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</b>
* The r-squared value is .71, which means this model predicts over 2/3 of the variability observed. This is significant, but it also suggests that there are additional variables affecting the result here.



## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. For this deliverable, summary statistics tables were created to show:

* The suspension coil???s PSI continuous variable across all manufacturing lots
* PSI metrics for each lot: mean, median, variance, and standard deviation.


The **statistics summary across all lots** can be seen here:

![15_deliv2_totsum](https://user-images.githubusercontent.com/100863488/173581949-82a656b5-517c-40e6-88f4-b866d36a1f33.png)

The **summary by manufacturing lot** can be seen here:

![15_deliv2_lotsum](https://user-images.githubusercontent.com/100863488/173582221-1c1c9ea9-a0ec-473f-bc99-19e4459841f2.png)


<i>The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?</i>
* No. The variance across all lots is 62.29, but when the manufacturing lots are separated from one another, it is clear that Lot 1 and 2 are compliant (with a variance of .98 and 7.47, respectively), but the variance of Lot 3 is non-compliant, with a variance of 170.29.


## T-Tests on Suspension Coils

For this deliverable, t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The following shows the result of performing a t-test on all manufacturing lots:

![15_deliv3_ttest_all](https://user-images.githubusercontent.com/100863488/173584708-9909d6cf-e2c0-42ff-b295-296950c409a6.png)


The p-value is .060. Assuming our significance level is 0.05, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.


The following shows the result of performing t-tests on each of the three individual manufacturing lots:

![15_deliv3_ttest_each](https://user-images.githubusercontent.com/100863488/173584739-820dc7bb-1929-4414-afc5-b8aab60850d1.png)

The p-values for Lot 1 and Lot 2 are very high, so we can comfortably state that the two means are very similar. However, the p-value for Lot 3 (.041) is below our significance level of .05, so we do have sufficient (although not strong) evidence for rejecting the null hypothesis. 


## Study Design: MechaCar vs Competition

The final deliverable includes the design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

The study described here involves **a comparison of maintenance costs** between the MechaCar and competitors' vehicles in its category. The competitors to compare would be cars in the same price range as the MechaCar with similar sizes and customer use (for example, if the MechaCar is a compact SUV, we would compare against competitors' compact SUVs in the same price range). The goal of the study would be to provide information that would help make the MechaCar more competitive as a purchase option by quantifying the difference in maintenance costs between the MechaCar and its competitors.

* The null hypothesis in this study is that there is no statistically significant difference in maintenance costs between MechaCar and its competitors.
* The alternative hypothesis is that there is a statistically significant difference in maintenance costs between MechaCar and its competitors.
* The maintenance costs would be quantified in dollars.
* An effective test to run would be the two-sample t-test, to determine whether there is a statistical difference between the distribution means of the two samples.
* The data needed to run this test would be reported maintenance costs of the MechaCar and its competitors over time. Perhaps the most consistent source of this information would be from dealerships offering maintenance services with long-term client bases. A sample of MechaCars and a sample of a competitor's model could be identified and each car associated with a maintenance cost (for example, the total maintenance cost after ten years of driving). If the type of maintenance could be identified also (for example, engine versus tire maintenance), this could provide helpful direction for areas in which to improve MechaCar's performance.
