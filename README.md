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
