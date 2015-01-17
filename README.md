# DevDataProd
Project for the course Developing Data Products

The ToothGrowth data set in R datasets package has 3 variables, len, supp, and dose, 60 observations in total. The variable len has two groups, OJ (Orange Juice) and VC (Vitamic C), and 30 observations in each group. For the variable dose, it has 3 unique values, 0.5, 1, and 2, and 20 observations for each value. The value range of len is from 4.2 to 33.9.

### Shiny Application
In this application, we use confidence intervals and hypothesis tests to compare tooth growth by supplement and dose. We have two types of comparison,

    1. We compare the two groups of supplyment with dose 0.5, 1.0, and 2.0, which can be selected by user. Each selection will run a T test and display p-value and Confident Interval in section 1 of right hand side main panel.
    2. We compare the three doses each others in different group of supplyment. User can select a group of supplyment and a dose pair to view the T test output, p-value and Confident Interval, in section 2 of right hand side main panel.

