#!/usr/bin/env bash
python train_drnet.py --batch_size 10 \
                      --data_root ./data/ \
                      --niter 10 \
                      --epoch_size 10 \
                      --dataset moving_mnist