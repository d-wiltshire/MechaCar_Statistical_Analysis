library(tidyverse)

## Deliverable 1

mechacar_df <- read.csv(file='MechaCar_mpg.csv')

head(mechacar_df)

#lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars) #generate multiple linear regression model

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df))

## "performed on all six variables"?



## Deliverable 2

s_coil_table <- read.csv(file='Suspension_Coil.csv')

head(s_coil_table)

?summarize()

total_summary <- s_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- s_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')



#Deliverable 3