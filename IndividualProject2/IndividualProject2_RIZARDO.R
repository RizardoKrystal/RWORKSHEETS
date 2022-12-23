#Krystal Rose Rizardo          BSIT 2-A
#CS 101- INDIVIDUAL PROJECT2


library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

CONSUMER_SECRET <- "i4HdM9fnNdX1kEsi0pDF0JIIqycgtV7xmcAAutY4F1y57zv3R5"
CONSUMER_KEY <- "Pb0seOA5G3Ax4MKmmfkyKWJL0"
ACCESS_SECRET <- "5Hw30PibQa3WiJWE8KnfDZaFozImVF3Tiw2TYV9X43Hyl"
ACCESS_TOKEN <- "1592528645469323265-rxKyIBmwmUmuDvcBUybTHk78cKDt2p"

#It will connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)
#extracting tweets
world_cup = searchTwitter("FIFAWorldCup", n = 10000, since = "2022-12-19", until = "2022-12-22",
                              lang = "en", retryOnRateLimit = 120)
world_cup

# CONVERTING LIST DATA TO DATA FRAME.
tweets_DF <- twListToDF(world_cup)
tweets_DF

# SAVE DATA FRAME FILE.
save(tweets_DF,file = "trendingTweetsDF.Rdata")

# LOAD DATA FRAME FILE.
load(file = "trendingTweetsDF.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
check_data<- sapply(world_cup, function(x) sum(is.na(x)))  
check_data  

#Tweets
# SUBSETTING USING THE dplyr() PACKAGE.
tweets <- tweets_DF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
tweets

# GROUPING THE DATA CREATED. 
tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

create_data <- tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
create_data

min <- tweets %>% pull(created) %>% min()
min 
max <- tweets %>% pull(created) %>% max()
max

#Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(create_data, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "orange", high = "black")

plt_data %>% ggplotly()

#==============
#Retweets
sub_tweets <- tweets_DF %>%
  select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)
sub_tweets


sub_tweets %>%  
  group_by(1) %>%  
  summarise(max = max(created), min = min(created))

create2 <- sub_tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
create2

min <- sub_tweets %>% pull(created) %>% min()
min 
max <- sub_tweets %>% pull(created) %>% max()
max

# Plot on tweets by time using the library(plotly) and ggplot().
plt_data <- ggplot(create2, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "green", high = "yellow")

plt_data %>% ggplotly()

