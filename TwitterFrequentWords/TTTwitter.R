#####SEEING TURK TELEKOM'S  MOST FREQUENT WORDS ON TWITTER
library("twitteR")
library("ROAuth")
library(devtools)
library("tm")
library("SnowballC")


download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="cacert.pem")

setup_twitter_oauth("XXX", "XXX", "XXX-XXX", "XXX")
tweets <- searchTwitter("turk telekom", n=100, lang="en", since="2017-xx-xx")
tweets.df <- twListToDF(tweets)



corpus <- Corpus(VectorSource(tweets.df$text))

corpus <- tm_map(corpus, tolower)
corpus <- tm_map(corpus, removePunctuation)

corpus <- tm_map(corpus, removeWords, c("turk telekom", stopwords("english")))

corpus <- tm_map(corpus, stemDocument)
corpus_clean <- tm_map(corpus, PlainTextDocument)
DTM <- DocumentTermMatrix(corpus_clean)
frequent_vodafone <- findFreqTerms(DTM, lowfreq = 7)
frequent_vodafone


[1] "beyond"        "turkcell" "earnings"      "hope"         "liberty"       "istanbul"   "please"        "pressures"    
[9] "price"         "progressing"   "says"          "shell"         "talks"         "turkey"     "weigh"    