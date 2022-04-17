# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
A Multiple Linear Regression was performed on the MechaCar_mpg database, taking as independent variables the following:

 - Vehicle Length
 - Vehicle Weight
 - Spoiler Angle
 - Ground Clearance
 - AWD

The results obtained are the following:

 - R-Squared: 0.7149
 - p-value: 5.35e-11
 - Variables reaching significance: Vehicle Length and Ground Clearance

## Summary Statistics on Suspension Coils
The summary statistics for the suspension coils database were calculated, both a total summary and a summary by each manufacturing lot.


![total_summary](https://user-images.githubusercontent.com/95982833/163729202-5add3c69-ce68-42ec-ab9b-2f87e145be79.png)


![lot_summary](https://user-images.githubusercontent.com/95982833/163729194-863360cb-ced4-4af3-813e-9ec749d8ec74.png)



As it can be observed, lot number 3 does not meet the manufacturing requirements (variance under 100 PSI).

## T-Tests on suspension coils.
As it was suggested from the summary statistics, there is a difference in the manufacturing results in Lot number 3, so T tests were performed grouped by each manufacturing lot, in order to determine the satistical significance of this difference, as it is shown in the picture below

![ttests](https://user-images.githubusercontent.com/95982833/163729207-00635d39-21b3-48b3-b586-97c15ea7dbaf.png)


As it can be noted, the only lot with statistically significant differences in the PSI of the suspension coils is lot 3, with a p-value of 0.042.

## Study design: MechaCar vs. Competition.
In order to determine the success of the MechaCar as a prototype, compared to the real world market production, I propose a study that may aid in the final design of the prototype before going into production, comparing more parameters that are usually taken into account by the consumer, being currently the most important one: fuel consumption. Although the MPG is currently being measured, the customer is used to compare fuel consumption by vehicle class, not by making calculations of vehicle weight and length.

 - I would suggest categorizing the vehicle weight into vehicle classes, as those classes determine the vehicle category in the dealerships, and also the taxing of each vehicle class. 
 - The null hypothesis would be that the fuel consumption of the MechaCar will be greater than the same class competitors, and the alternate hypothesis that is at least the same or if not, lower.
 - After the vehicles are categorized in classes, I would use the Chi-squared test to compare the fuel efficiency measured in MPG by vehicle class, in order to make a comparison by class with the competition.
 - The data needed would be the vehicle class (sedan, compact, SUV, etc) and the mean MPG.

Another useful parameter for the customer is the performance specifications, also grouped by vehicle class.

 - After grouping the vehicles by class, the following common performance specifications should be measured: Max speed, 0-60 MPH acceleration, HP and Torque.
 - Summary statistics for these parameters should be obtained in every manufacturing lot, in order to determine two things:
	 - Homogeinity in the engine and performance specifications between the manufacturing lots by using the two-sample T-test, with a null hypothesis being that the performance specs are not different between groups, and the alternate hypothesis being that the performance specs are different, hoping to accept the null hypothesis and rejecting the alternate hypothesis. (no one would like to buy a car that does not perform the same as a supposedly identical car, reflecting poor production quality and control).
 - The mean of the performance specs can be compared against the top seller of the category, in order to determine if the performance is better or at least as good as the competition, using also the T test to make the statistycal analysis.
