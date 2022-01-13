#!/usr/bin/env bash

# Crop screenshots (taken on my vertical external monitor):
for year in 2018 2022; do
  convert -strip -crop 2144x3624+120+238 orig/Ward\ Map\ $year.png cropped/Ward\ Map\ $year.png
done
