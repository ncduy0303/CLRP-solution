#!/bin/sh
mkdir extra_data

(
cd extra_data; 
wget http://www.thespermwhale.com/jaseweston/babi/CBTest.tgz; 
tar -xvf CBTest.tgz;
rm CBTest.tgz;
mv CBTest/data/cbt_test.txt ./;
mv CBTest/data/cbt_train.txt ./;
mv CBTest/data/cbt_valid.txt ./;
rm -rf CBTest;
)

(
cd extra_data; 
wget https://github.com/LGDoor/Dump-of-Simple-English-Wiki/raw/master/corpus.tgz;
tar -xvf corpus.tgz;
rm corpus.tgz;
mv corpus.txt simple_english_wiki.txt;
)