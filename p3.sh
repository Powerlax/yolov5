#!/bin/sh
python3 val.py --data $1/data.yaml --img 640 --batch-size 16 --weights transfer/best.pt
cd example_images
