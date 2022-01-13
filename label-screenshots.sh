#!/usr/bin/env bash

# Add text labels:
for year in 2018 2022; do
  convert -strip -font helvetica -fill black -pointsize 300 -gravity Northwest -draw "text 300,500 '$year'" cropped/Ward\ Map\ $year.png labeled/Ward\ Map\ $year.png
done
