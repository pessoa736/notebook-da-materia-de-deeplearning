#!/bin/bash

python3.12 -m venv .venv-nvidia
python3.12 -m venv .venv-amd


source .venv-nvidia/bin/activate

pip install --upgrade pip
pip install tensorflow
pip install numpy matplotlib jupyter notebook pandas scikit-learn opencv-python

deactivate


source .venv-amd/bin/activate

pip install tf-keras --no-deps
pip install --upgrade pip
pip install https://repo.radeon.com/rocm/manylinux/rocm-rel-7.2.1/tensorflow_rocm-2.20.0.dev0%2Bselfbuilt-cp312-cp312-manylinux_2_28_x86_64.whl
pip install numpy matplotlib  jupyter notebook pandas scikit-learn opencv-python

deactivate
