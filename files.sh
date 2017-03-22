#!/bin/bash


# Programma dat het aantal keer telt dat 'file' voorkomt in tweets tijdens de ochtendspits en de avondspits op 01 - 03 - 2017

# ochtendspits data van 7:00 tot 9:59
ochtend1='/net/corpora/twitter2/Tweets/2017/03/20170301:07.out'
ochtend2='/net/corpora/twitter2/Tweets/2017/03/20170301:08.out'
ochtend3='/net/corpora/twitter2/Tweets/2017/03/20170301:09.out'

# avondspits data van 16:00 tot 18:59
avond1='/net/corpora/twitter2/Tweets/2017/03/20170301:16.out.gz'
avond2='/net/corpora/twitter2/Tweets/2017/03/20170301:17.out.gz'
avond3='/net/corpora/twitter2/Tweets/2017/03/20170301:18.out.gz'


# telt voorkomens file in ochtendspits data
echo "aantal keer dat file voorkam in tweets tijdens de ochtendspits"
zcat  $ochtend1 $ochtend2 $ochtend3 | /net/corpora/twitter2/tools/tweet2tab -i text |  grep -i 'file' | wc -l

# telt voorkomens file in avondspits data
echo "aantal keer dat file voorkam in tweets tijdens de avondspits"
zcat  $avond1 $avond2 $avond3 | /net/corpora/twitter2/tools/tweet2tab -i text |  grep -i 'file' | wc -l




