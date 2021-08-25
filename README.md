# CLRP-solution
### Requirements:
torch==1.9.0+cu111 \
transformers==4.9.2 \

Tested on a RTX A6000 with 48GB VRAM

### Prep:
Just run `./download_extra_data.sh` or \\
Download \
Children's Book Test from: \
https://research.fb.com/downloads/babi/ \
Simple Wiki Dump from: \
https://github.com/LGDoor/Dump-of-Simple-English-Wiki \
and save it as follows \
`./extra_data/cbt_test.txt` \
`./extra_data/cbt_train.txt` \
`./extra_data/cbt_valid.txt` \
`./extra_data/simple_english_wiki.txt`

CLRP training data (download manually from Kaggle) goes to \
`./data/train.csv` \
`./data/test.csv`


### Train from scratch:
`./run_train.sh` \
takes about 30 hours


### Predict:
`python 4.predict.py ./{path_to_source_file}.csv ./{path_to_save}.csv 3 0 ./models/roberta_2/ ./models/deberta_1/ ./models/deberta_2/` \
make sure the column name is 'excerpt' in source csv file


### Solution writeup:
https://www.kaggle.com/c/commonlitreadabilityprize/discussion/258095