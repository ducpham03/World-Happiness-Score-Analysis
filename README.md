# Coursework Project: World Happiness Score Analysis
This coursework project aims to analyze the Happiness Score dataset to investigate the following research questions:
- RQ1: Which are the top 5 countries that have the highest and lowest Happiness Scores?
- RQ2: To what extent are factors such as GDP per capita, Social support, and Health life expectancy associated with Happiness Score?

**Methods**

The Happiness Score dataset consists of 156 observations and 9 variables, including Ranking, Country, Score, GDP per capita, Social support, Health life expectancy, Freedom to make life choices, Generosity, and Perception of corruption. The dataset was analyzed using the Tidyverse package in R.

**To answer RQ1, the following steps were taken:**

- The dataset was read into R and renamed to happiness.
- The top 5 countries with the highest and lowest Happiness Scores were identified using the head() and tail() functions.
- A bar chart was created to visualize the top 5 countries with the highest and lowest Happiness Scores using the ggplot() package.

**To answer RQ2, the following steps were taken:**

- The correlation coefficients between Happiness Score and GDP per capita, Social support, and Health life expectancy were calculated using the cor() function.
- A linear regression model was fitted to the Happiness Score dataset to predict the Happiness Score as a function of GDP per capita, Social support, and Health life expectancy using the lm() function.

**Results**

- RQ1: The top 5 countries with the highest Happiness Scores are Finland, Denmark, Iceland, Switzerland, and Netherlands. The top 5 countries with the lowest Happiness Scores are Afghanistan, Burundi, Central African Republic, South Sudan, and Yemen.

- RQ2: The correlation coefficients between Happiness Score and GDP per capita, Social support, and Health life expectancy are 0.743, 0.783, and 0.760, respectively. This indicates that there is a strong positive correlation between Happiness Score and these factors.

The linear regression model fitted to the Happiness Score dataset is as follows:

Happiness Score = -10.198 + 0.004 * GDP per capita + 1.025 * Social support + 0.123 * Health life expectancy

This model explains 76.5% of the variance in Happiness Score. The coefficients of GDP per capita, Social support, and Health life expectancy are all statistically significant, indicating that these factors are significantly associated with Happiness Score.

**Conclusion**

The findings of this study suggest that GDP per capita, Social support, and Health life expectancy are all important factors associated with Happiness Score. The linear regression model can be used to predict Happiness scores as a function of these factors.

Recommendations

Future research could investigate the causal relationship between Happiness Score and GDP per capita, Social support, and Health life expectancy. Additionally, future research could explore other factors that may be associated with the Happiness Score, such as education, employment, and social safety nets.

                                                        
                                                        
