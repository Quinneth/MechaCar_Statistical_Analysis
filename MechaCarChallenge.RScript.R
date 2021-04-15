#Deliverable 1

#3 Import dplyr pakage

library(dplyr)

#4 read CSV 

MechaCar_mpg <-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#5 Perform linear regression using lm() function-->pass in all 6 columns (variables)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg)

#6 Using the summary() function, determine the p-value and the r-squared value for the linear regression model.

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg))

#Deliverable 2 

#2 import and read suspension file in a table

Suspension_Coil <-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#3 Create a total_summary data frame using summarize() fx to get mean, median, variance, and sd

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),variance=var(PSI),SD=sd(PSI))

#4 create lot_summary dataframe using group_by() and summarize fx to group by mean,, median, varinace, and sd of suspension coils PSI column

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),variance=var(PSI),SD=sd(PSI))

#Deliverable 3

#1 t.test() fx to determin if PSI across all manufacturing lots is diff from 1500

t.test(x=Suspension_Coil$PSI, mu=1500) #t.test across all manufacturing lots

#2a. t.test on Lot 1

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500)

#2b t.test on Lot 2

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500) 

#2c t.test on Lot 3

t.test(subset(Suspension_Coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500) 
