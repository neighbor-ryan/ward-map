#!/usr/bin/env bash

set -ex

./crop-screenshots.sh
./label-screenshots.sh
./make-gif.sh
