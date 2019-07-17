#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python train_drnet.py --batch_size 100 \
                                             --data_root ./data/ \
                                             --niter 10 \
                                             --epoch_size 10 \
                                             --dataset moving_mnist \
                                             --device cpu
