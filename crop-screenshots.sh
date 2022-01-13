#!/usr/bin/env bash

for year in 2018 2022; do
  convert -crop 2144x3624+120+238 orig/Ward\ Map\ $year.png cropped/Ward\ Map\ $year.png
done
