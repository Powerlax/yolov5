#!/bin/sh
cd transfer
mv ../runs/train/exp1/weights/best.pt best.pt
git lfs track "*.pt"
git add *
gh auth login
git commit -m "Upload model weights"
git push
