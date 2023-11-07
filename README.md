# Coursework Project: Happiness Score Analysis
This project aims to analyze the Happiness Score dataset and find the top 5 countries with the highest and lowest Happiness Scores, the correlation between Happiness Score and GDP per capita, Social support, and Health life expectancy, and the linear regression of Happiness Score.

**1. Dataset explanation:** 
- The dataset has 156 observations and 9 variables.
<br />     + 156 observations are 156 countries.
<br />     + 9 variables are Ranking, Country, Score, GDP per capita, Social support, Health life expectancy, Freedom to make life choices, Generosity, and Perception of corruption.
- I chose this dataset because of the reasons in the description. Besides, is economic development only a part of the story. To what extent are factors such as Social support and Health life expectancy,… associated with Happiness Score?

**2. Problems:**
- Which are the top 5 countries that have the highest and lowest Happiness Score?
- The correlation between Happiness Score and GDP per capita, Social support, and Health life expectancy, and the correlation coefficients of those.
- Linear regression of the Happiness Score. 
- Predict a country's Happiness Score with some numeric values.

**3. Explanation analyses that lead to final conclusions:**
- Read the dataset. I set 'happiness' as the name of the new dataset.
- Change the names of variables to easier names for use.
- 1. Top 5 countries which have the highest and lowest Happiness Scores:
<br />      + Top 5 highest countries with highest Happiness Score: head(happiness, n=5)
<br />      + Top 5 highest countries with lowest Happiness Score: tail(happiness, n=5)
<br />      + Draw a graph of those 10 countries. I did create a new data frame that only has those 10 countries
- 2. Average Happiness Score of all countries:
<br />      + I did add a new feature called 'level' to see if that country is above or below the Average Happiness Score.
- 3. Plot of correlation between Happiness Score and GDP per capita, Social Support, and Health life expectancy:
<br />      + I also calculated the correlation coefficients of those 3 graphs. 
<br />      + Besides, the graph shows the linear model of those plots.
- 4. Overall Linear Regression of Happiness Score:
<br />      + lm(Score~.-Ranking-Country,happiness). I put the Ranking and Country variables out because it does not affect the Linear Model.
<br />      + The equation of the Happiness Score: y = ...
- 5. Predict a Happiness Score of a country with some numeric values:
<br />      + Happiness Score = ...

4. Methods I used in the analysis:
- Tidyverse package
- rename, head, tail, mutate, ggplot, geom_bar, coord_flip, xlab, theme_bw, data.frame, rbind
- mean, geom_point, geom_smooth, cor, lm

                                                        
                                                        
