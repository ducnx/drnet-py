#!/usr/bin/env bash
CUDA_VISIBLE_DEVICES=0 python train_lstm.py --data_root ./data/ \
                                            --data moving_mnist \
                                            --niter 100 \
                                            --batch_size 100 \
                                            --epoch_size 50 \
                                            --model_path ""