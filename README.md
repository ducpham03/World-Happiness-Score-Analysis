# Coursework Project: World Happiness Score Analysis
This coursework project aims to analyze the Happiness Score dataset to investigate the following research questions:
- RQ1: Which are the top 5 countries that have the highest and lowest Happiness Scores?
- RQ2: To what extent are factors such as GDP per capita, Social support, Health life expectancy, etc... associated with Happiness Score?
______________________

**Methods**

The Happiness Score dataset consists of 156 observations and 9 variables, including Ranking, Country, Score, GDP per capita, Social support, Health life expectancy, Freedom to make life choices, Generosity, and Perception of corruption. The dataset was analyzed using the Tidyverse package in R.

**To answer RQ1, the following steps were taken:**

- The dataset was read into R and renamed to happiness.
- The top 5 countries with the highest and lowest Happiness Scores were identified using the head() and tail() functions.
- A bar chart was created to visualize the top 5 countries with the highest and lowest Happiness Scores using the ggplot() package.

**To answer RQ2, the following steps were taken:**

- The correlation coefficients between Happiness Score and factors such as GDP per capita, Social support, and Health life expectancy were calculated using the cor() function.
- A linear regression model was fitted to the Happiness Score dataset to predict the Happiness Score as a function of GDP per capita, Social support, and Health life expectancy using the lm() function.
______________________

**Results**

- RQ1: The top 5 countries with the highest Happiness Scores are Finland, Denmark, Norway, Iceland, and Netherlands. The top 5 countries with the lowest Happiness Scores are Rwanda, Tanzania, Afghanistan, Central African Republic, and South Sudan. 
- RQ2: The correlation coefficients between Happiness Score and factors such as GDP per capita, Social support, Health life expectancy, etc... This indicates that there is a strong positive correlation between Happiness Score and these factors.

The linear regression model fitted to the Happiness Score dataset is as follows:

**Happiness Score** = 1.7952 + 0.7754 _GDP_per_capita_ + 1.1242 _Social_support_ + 1.0781 _Health_life_expectancy_ + 1.4548 _Freedom_to_make_life_choices_ + 0.4898 _Generosity_ + 0.9723 _Perception_of_corruption_

This model explains the variance in the Happiness Score. The coefficients of GDP per capita, Social support, Health life expectancy, Freedom to make life choices, Generosity, and Perception of corruption are all statistically significant, indicating that these factors are significantly associated with the Happiness Score.

______________________

**Conclusion**

The findings of this study suggest that factors like GDP per capita, Social support, Health life expectancy, etc... are all important factors associated with the Happiness Score. The linear regression model can be used to predict Happiness scores as a function of these factors.

**Recommendations**

Future research could investigate the causal relationship between Happiness Score and GDP per capita, Social support, Health life expectancy, etc... Additionally, future research could explore other factors that may be associated with the Happiness Score, such as education, employment, and social safety nets.

                                                        
                                                        
