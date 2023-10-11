#!/bin/sh
cd ..
python3 detect.py --weights transfer/best.pt --img 640 --conf 0.25 --source example_images --save-conf --save-txt
cd runs/detect/exp1
mv * ../../../transfer
cd ../../../transfer
git add *
git commit -m "Added examples"
git push