#!/bin/sh
python train_drnet.py --batch_size 10 \
                      --data_root ./data/processed/ \
                      --niter 10 \
                      --epoch_size 10 \
                      --dataset moving_mnist