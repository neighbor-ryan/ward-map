# 2022 Jersey City Ward Map
Best effort shapefiles (and [map][My Map]) taken from [this tweet](https://twitter.com/Chris_L_Gadsden/status/1481610431475105795) showing a draft Ward Map.

![](./Ward%20Map%202018-2022.gif)

Relevant Imagemagick commands:
```bash
# Crop screenshots (taken on my vertical external monitor):
for year in 2018 2022; do 
  convert -crop 2144x3624+120+238 orig/Ward\ Map\ $year.png cropped/Ward\ Map\ $year.png
done

# Add text labels:
for year in 2018 2022; do
  convert -font helvetica -fill black -pointsize 300 -gravity Northwest -draw "text 300,500 '$year'" cropped/Ward\ Map\ $year.png labeled/Ward\ Map\ $year.png
done

# Build .gif:
convert -resize 20% -delay 100 -loop 0 labeled/Ward\ Map\ 20{18,22}.png Ward\ Map\ 2018-2022.gif
```

[My Map]: https://www.google.com/maps/d/edit?mid=1N_bzeom3WggYMHIpZ-K0errhIFvaD-Eg
