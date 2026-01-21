#! /usr/bin/env python

import lightgbm as lgb
import numpy as np

X = np.random.rand(1000, 10)
y = np.random.randint(0, 2, size=1000)

train_data = lgb.Dataset(X, label=y)

params = {
    "objective": "binary",
    "device": "cuda",
    "gpu_platform_id": 0,
    "gpu_device_id": 0,
    "verbosity": 1,
}

bst = lgb.train(
    params,
    train_data,
    num_boost_round=10
)

