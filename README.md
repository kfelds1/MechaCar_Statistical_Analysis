# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![Screen Shot 2023-01-29 at 8 38 51 AM](https://user-images.githubusercontent.com/112633146/215329954-ab40ca9f-69cd-4557-97bf-357cc0fde31b.png)

As seen above, I used RScript to gather information on the y-intercept and coefficients of variables in this dataset. As seen below, I developed a linear regression of the dataset to determine how strong of a relationship there is among the dependent and independent variables. We can observe the coefficients of the independent variables at a 95% confidence level:
 - vehicle_length: 0 < .05 --> statistically significant & non-random amount of variance
 - vehicle_weight: 0.078 > .05 --> not statistically significant & random amount of variance
 - spoiler_angle: 0.31 > .05 --> not statistically significant & random amount of variance
 - ground_clearance: 0 < .05 --> statistically significant & non-random amount of variance
 - AWD: 0.19 > .05 --> not statistically significant & random amount of variance

Vehicle Length and Ground Clearance are statistically significant and provide a non-random amount of variance to the mpg values in the dataset.

![Screen Shot 2023-01-29 at 8 41 45 AM](https://user-images.githubusercontent.com/112633146/215330084-f025a524-b04d-4a9a-9ed6-176be7fd72cb.png)

The slope of the linear model is not considered to be zero. Though some variables have a slope that is close to 0, like vehicle_weight for example, some variables have a slope that is larger than zero, such as vehicle_length. At this point, this linear model seems to predict mpg of MechaCar prototypes relatively effectively, as the R-squared value is 0.7149. This is close to 1, however there are other methods of determining whether or not a linear model is an accurate representation of a dataset.


## Summary Statistics on Suspension Coils

### Total Summary of Manufacturing Lots

![Screen Shot 2023-01-29 at 9 19 27 AM](https://user-images.githubusercontent.com/112633146/215332602-50b941e2-0e71-4e71-abe4-b7eaa03f04b2.png)

### Summary of Each Manufacturing Lot

The above shows the summary statistics of suspension coils for the three lots combined. As a whole, the variance is 62.29, which meets the design specifications because it is less than 100 pounds per square inch. However, when looking at the summary statistics for each lot individually (seen below), lot 3 does not reach the design specifications, as its variance is about 170 pounds per square inch.

![Screen Shot 2023-01-29 at 9 26 47 AM](https://user-images.githubusercontent.com/112633146/215333020-8f67e756-b05b-4994-9569-7a182f82c999.png)

## T-Tests on Suspension Coils

![Screen Shot 2023-01-29 at 11 29 38 AM](https://user-images.githubusercontent.com/112633146/215340498-a2cfe9a0-93b9-4249-bb54-69dd4c6bb32a.png)

The first t-test (results pictured above) reveal a p-value of 0.06028. Since this value is greater than .05, the total manufacturing lot is not statistically significant.

### Lot 1
![Screen Shot 2023-01-29 at 11 35 27 AM](https://user-images.githubusercontent.com/112633146/215340604-ad572322-f6f8-478a-840a-1325ead9fd57.png)


### Lot 2
![Screen Shot 2023-01-29 at 11 36 02 AM](https://user-images.githubusercontent.com/112633146/215340636-11c061fc-16c7-4d21-978e-00475c8308c6.png)

### Lot 3
![Screen Shot 2023-01-29 at 11 36 29 AM](https://user-images.githubusercontent.com/112633146/215340668-083acc0b-8364-4369-8bf3-327caf861e7c.png)

When performing t-tests on individual lots, we can see that lots 1 and 2 have t-values of 8.72 and 3.67, respectively, and p-values of approximately 0. However, when observing the results of lot 3's t-test, we can see the p-value of 0.159 and the fact that 1500 pounds per square inch does not fall within the 95% confidence interval. We can assume that lot 3 is statistically significant with an alpha of .05.


## Study Design: MechaCar vs Competition

When observing the performance of the MechaCar, we need to understand how certain metrics might compare to those of the vehicle's competition. For example, some of these variables include city and highway fuel efficiency, safety rating, and horsepower. These are the three variables that we will test next.

The null hypothesis for testing these variables is that the MechaCar's measures are not significantly different from those of its competition. The alternative hypothesis is that the MecharCar varies significantly from its competitors in terms of fuel efficiency, safety rating, and horsepower.

We would perform t-tests on these variables for both the MechaCar and its competition in order to discover the most efficient and safe vehicle. This statistical test could allow the potential customers to clearly see which vehicle is the best option; the preferred option is the car with the higher city and highway fuel efficiency, the higher safety rating, and the higher horsepower.

To make these tests possible, we would need the data for these variables for both the MechaCar and its competition. For a more reliable experiment, we should use a random sample of at least 30 observations to ensure that we can detect true differences between the vehicles.
