#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python train_drnet.py --batch_size 100 \
                                             --data_root ./data/ \
                                             --niter 100 \
                                             --epoch_size 50 \
                                             --dataset suncg \
                                             --device cpu
