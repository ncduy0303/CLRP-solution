#!/bin/sh
mkdir pretrained

(
cd pretrained; 
git clone https://huggingface.co/roberta-large; 
git clone https://huggingface.co/microsoft/deberta-large;
)