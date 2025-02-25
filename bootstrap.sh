#!/bin/bash -ex

PROJECT=${1:-"wsl-dev"}

sudo apt-get update &&
sudo apt-get install python3-venv &&

python3 -m venv ansible &&
source ansible/bin/activate &&
pip install --require-virtualenv ansible &&

ansible-pull -K -U https://github.com/neilramsay/${PROJECT}.git
