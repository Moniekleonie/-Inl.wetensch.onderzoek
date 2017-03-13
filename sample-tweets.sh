#!/bin/bash


# 1. Totale aantal tweets

echo "Totale aantal tweets in de sample"
zless /net/corpora/twitter2/Tweets/2017/03/20170301:12.out.gz  | /net/corpora/twitter2/tools/tweet2tab -i text |  wc -l
 
# 2. Aantal unieke tweets 

echo "Totale aantal unieke tweets in de sample"
zless /net/corpora/twitter2/Tweets/2017/03/20170301:12.out.gz  | /net/corpora/twitter2/tools/tweet2tab -i text | sort | uniq | wc -l

# 3. Aantal retweets 

echo "Totale aantal unieke retweets in de sample"

zless /net/corpora/twitter2/Tweets/2017/03/20170301:12.out.gz  | /net/corpora/twitter2/tools/tweet2tab -i text | sort | uniq | grep ^RT | wc -l

# 4. Print de eerste 20 unieke tweets die geen retweets zijn. 

echo "Eerste 20 unieke tweets die geen retweets zijn"
zless /net/corpora/twitter2/Tweets/2017/03/20170301:12.out.gz  | /net/corpora/twitter2/tools/tweet2tab -i text | sort | uniq | grep -v ^RT | head -20

