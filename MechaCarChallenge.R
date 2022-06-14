library(tidyverse)

## Deliverable 1

mechacar_df <- read.csv(file='MechaCar_mpg.csv')

head(mechacar_df)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df))





## Deliverable 2

s_coil_table <- read.csv(file='Suspension_Coil.csv')

head(s_coil_table)

total_summary <- s_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- s_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')



## Deliverable 3

t.test(s_coil_table$PSI,mu=1500)

lot1 <- s_coil_table[s_coil_table$Manufacturing_Lot=="Lot1",]

t.test(lot1$PSI,mu=1500)

lot2 <- s_coil_table[s_coil_table$Manufacturing_Lot=="Lot2",]

t.test(lot2$PSI,mu=1500)

lot3 <- s_coil_table[s_coil_table$Manufacturing_Lot=="Lot3",]

t.test(lot3$PSI,mu=1500)




