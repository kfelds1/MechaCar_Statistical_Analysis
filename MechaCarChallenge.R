# Deliverable 1

# Load package
library(dplyr)

# Import and read csv as dataframe
MechaCar_mpg = read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors=F)

# Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data = MechaCar_mpg)

# Summary Statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

# Deliverable 2

library(dplyr)  

# Import and read csv as dataframe
Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#stat summary with summarize()
total_summary <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

# stat summary with group_by()
lot_summary <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep') 

# Deliverable 3

# use t.test() to determine if the PSI across ALL lots is 
# statistically different from the pop. mean of 1,500 PSI.
t.test(Suspension_Coil$PSI,mu=1500)

# t-test for lot 1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),mu=mean(Suspension_Coil$PSI))
# t-test for lot 2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),mu=mean(Suspension_Coil$PSI))
# t-test for lot 3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),mu=mean(Suspension_Coil$PSI))

