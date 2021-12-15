library(tidyverse)

happiness <- read.csv("2019.csv")
happiness

happiness <- happiness%>%
  rename('Ranking'=Overall.rank) %>%
  rename('Country'=Country.or.region) %>%
  rename('GDP_per_capita'=GDP.per.capita) %>%
  rename('Social_support'=Social.support) %>%
  rename('Health_life_expectancy'=Healthy.life.expectancy) %>%
  rename('Freedom_to_make_life_choices'=Freedom.to.make.life.choices) %>%
  rename('Perception_of_corruption'=Perceptions.of.corruption)

view(happiness)

#Top Happiest and Unhappiest Countries

top_5_highest <- head(happiness, n=5)

top_5_lowest <- tail(happiness, n=5)

#Graph of the top Happiess Score countries
top5h <- data.frame(Country=top_5_highest[,2],
                    Score=top_5_highest[,3])
top5h

top5l <- data.frame(Country=top_5_lowest[,2],
                    Score=top_5_lowest[,3])
top5l

data <- rbind(top5h,top5l)

data

data %>%
  mutate(Country = fct_reorder(Country, Score)) %>%
  ggplot(aes(x=Country, y=Score)) +
  geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
  coord_flip() +
  xlab("") +
  theme_bw()


#Calculate the average Happiness Score
avg<-mean(happiness$Score)
avg
happiness2 <- happiness[,2:3]
happiness3 <- happiness2%>%
  mutate(Level=case_when((Score<avg)~'Below', 
                         (Score==avg)~'Equal',
                         (Score>avg)~'Above'))
happiness3


#Correlation
GDP_vs_score <- happiness%>%
  ggplot(aes(x=GDP_per_capita,y=Score))+
  geom_point(color='orange')+
  geom_smooth(method='lm', se=FALSE, color='orange') 
  
GDP_vs_score

cor(happiness$GDP_per_capita,happiness$Score)

social_vs_score <- happiness%>%
  ggplot(aes(x=Social_support,y=Score))+
  geom_point(color='purple')+
  geom_smooth(method='lm', se=FALSE, color='purple')
social_vs_score

cor(happiness$Social_support,happiness$Score)

health_vs_score <- happiness%>%
  ggplot(aes(x=Health_life_expectancy, y=Score))+
  geom_point(color='pink')+
  geom_smooth(method='lm', se=FALSE, color='pink')
health_vs_score

cor(happiness$Health_life_expectancy,happiness$Score)


#Linear model
linear_model <- lm(Score~.-Ranking-Country,happiness)     
linear_model
summary(linear_model)

#Predict a country's Happiness Score
GDP_per_capita <- 1.2
Social_support <- 1.3
Health_life_expectancy <- 0.9
Freedom_to_make_life_choices <- 0.5
Generosity <- 0.2
Perception_of_corruption <- 0.4

y = 1.7952 + 0.7754*GDP_per_capita + 1.1242*Social_support +
    1.0781*Health_life_expectancy + 1.4548*Freedom_to_make_life_choices +
    0.4898*Generosity + 0.9723*Perception_of_corruption
y


