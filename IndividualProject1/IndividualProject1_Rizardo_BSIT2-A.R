#Krystal Rose M Rizardo BSIT 2-A
#CS- 101 Individual project 1

library(twitteR)
library(rtweet)
library(tm)
library(dplyr)
library(plotly)
library(RColorBrewer)
library(tidytext)
library(stringr)
library(tidyr)
library(magrittr)
library(wordcloud)
library(wordcloud2)

CONSUMER_SECRET <- "i4HdM9fnNdX1kEsi0pDF0JIIqycgtV7xmcAAutY4F1y57zv3R5"
CONSUMER_KEY <- "Pb0seOA5G3Ax4MKmmfkyKWJL0"
ACCESS_SECRET <- "5Hw30PibQa3WiJWE8KnfDZaFozImVF3Tiw2TYV9X43Hyl"
ACCESS_TOKEN <- "1592528645469323265-rxKyIBmwmUmuDvcBUybTHk78cKDt2p"
  
#connect to twitter app
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)
#extracting tweets
WYATHomecoming = searchTwitter("WYATHomecoming-filter:retweets", n = 10000, since = "2022-12-18", until = "2022-12-21",
                                lang = "en", retryOnRateLimit = 120)

  tweetsDF <- twListToDF(WYATHomecoming)
  tweetsDF
  
  class(tweetsDF)
  names(tweetsDF)
  View(tweetsDF)
  head(tweetsDF)[1:5]
  head(tweetsDF$text)[1:5]
  
  save(tweetsDF,file = "trendingTweetsDF.Rdata")
  
  load(file = "trendingTweetsDF.Rdata")

 check_data <- sapply(WYATHomecoming, function(x) sum(is.na(x)))  
 check_data  

tweetsDF <- tweetsDF %>%
  select(screenName,text,created,statusSource)
tweetsDF

tweetsDF %>%
group_by(1)  %>%
  summarise(max = max(created), min = min(created))


add_data <- tweetsDF %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
add_data

tweetsDF %>% pull(created) %>% min() 
tweetsDF %>% pull(created) %>% max()

#Plot on tweets by time using the library(plotly) and ggplot().
dataplotting<- add_data %>% 
  dplyr::count(Created_At_Round) %>% 
  ggplot(mapping = aes(x = Created_At_Round, y = n)) +
  theme_light() +
  geom_line() +
  xlab(label = 'Date') +
  ylab(label = NULL) +
  ggtitle(label = 'Number of Tweets per Hour')

dataplotting %>% ggplotly()


#pseodu plotting that has a legend
ggplot(data = tweetsDF, aes(x = created)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "pink", high = "purple")


# PLOTTING STATUS SOURCE.
encodeSource <- function(x) {
  if(grepl(">Twitter for iPhone</a>", x)){
    "iphone"
  }else if(grepl(">Twitter for iPad</a>", x)){
    "ipad"
  }else if(grepl(">Twitter for Android</a>", x)){
    "android"
  } else if(grepl(">Twitter Web Client</a>", x)){
    "Web"
  } else if(grepl(">Twitter for Windows Phone</a>", x)){
    "windows phone"
  }else if(grepl(">dlvr.it</a>", x)){
    "dlvr.it"
  }else if(grepl(">IFTTT</a>", x)){
    "ifttt"
  }else if(grepl(">Facebook</a>", x)){  #This looks unreliable...
    "facebook"
  }else {
    "others"
  }
}


#applying encodeSource funtion in the tweetsDF data
tweetsDF$tweetSource = sapply(tweetsDF$statusSource, 
                               encodeSource)

#Converting to dataframe
appSource <- tweetsDF %>% 
  select(tweetSource) %>%
  group_by(tweetSource) %>%
  summarize(count=n()) %>%
  arrange(desc(count))


#plotting using geom_bar() - bar graph
ggplot(tweetsDF[tweetsDF$tweetSource != 'others',], aes(tweetSource, fill = tweetSource)) +
  geom_bar() +
  theme(legend.position="none",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylab("Number of tweets") +
  ggtitle("Tweets by Source")

# accounts which tweeted about Enhypen.
accounts_tweet <- tweetsDF %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

#convert to Corpus
namesCorpus <- Corpus(VectorSource(tweetsDF$screenName))  #using ScreenName
class(tweetsDF$screenName)

class(VectorSource(tweetsDF$screenName))


str(namesCorpus)

class(namesCorpus)

names <- namesCorpus
names

# Wordcloud
pal <- brewer.pal(8, "Dark2")
word <- pal[-(1:4)]
set.seed(123)

par(mar = c(0,0,0,0), mfrow = c(1,1))

wordcloud(words = namesCorpus, scale=c(3,0.5),
          max.words=10000,
          random.order=FALSE,
          rot.per=0.5,
          use.r.layout=TRUE,
          colors=word)

