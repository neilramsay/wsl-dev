#!/bin/bash -ex

PROJECT=${1:-"wsl-dev"}

sudo apt-get update &&
sudo apt-get install -y python3-venv

if ! test -d ansible; then
    python3 -m venv ansible
fi
source ansible/bin/activate &&
pip install --require-virtualenv ansible &&

ansible-pull -K -U https://github.com/neilramsay/${PROJECT}.git
