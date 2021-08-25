#!/bin/sh
python3 0.prepare_data.py # 5s
python3 1.roberta_pretrain.py # 5m
python3 2.finetune.py ro ./models/roberta_large_pretrain.pt ./models/roberta_1/ custom 1 # 15m

python3 4.predict.py ./extra_data/extra_excerpt.csv ./extra_data/pseudo_1/ 1 1 ./models/roberta_1/ # 55m
python3 3.pseudo_train.py de ./extra_data/pseudo_1/ ./models/deberta_1/ 1 # 9.5h

python3 4.predict.py ./extra_data/extra_excerpt.csv ./extra_data/pseudo_2/ 2 1 ./models/roberta_1/ ./models/deberta_1/
python3 3.pseudo_train.py de ./extra_data/pseudo_2/ ./models/deberta_2/ 0
python3 2.finetune.py de ./models/deberta_2/deberta_large_single.pt ./models/deberta_2/ 3stage 3
python 4.predict.py ./extra_data/extra_excerpt.csv ./extra_data/pseudo_3/ 3 1 ./models/roberta_1/ ./models/deberta_1/ ./models/deberta_2/
python3 3.pseudo_train.py ro ./extra_data/pseudo_3/ ./models/roberta_2/ 0
python3 2.finetune.py ro ./models/roberta_2/roberta_large_single.pt ./models/roberta_2/ 3stage 3