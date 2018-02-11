#!/bin/bash

mkdir venv
cd venv
python3 -m venv tensorflow

source tensorflow/bin/activate

pip install tensorflow numpy pandas jupyter matplotlib
