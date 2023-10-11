#!/bin/sh
cd ..
python3 val.py --data $1/data.yaml --img 640 --batch-size 16 --weights transfer/best.pt
mkdir example_images
cd example_images
