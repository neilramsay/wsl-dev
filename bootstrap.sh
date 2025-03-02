#!/bin/bash -ex

PROJECT=${1:-"wsl-dev"}

if ! test -d /usr/share/doc/python3-venv; then
    sudo apt-get update &&
    sudo apt-get install -y python3-venv
else
    sudo true
fi

if ! test -d ansible; then
    python3 -m venv ansible &&
    source ansible/bin/activate &&
    pip install --require-virtualenv ansible
else
    source ansible/bin/activate
fi

ansible-pull -U https://github.com/neilramsay/${PROJECT}.git
