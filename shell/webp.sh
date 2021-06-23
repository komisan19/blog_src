#!/bin/sh

images=$(find ../static/images/ -type f -iname '*'.png)
for image in $images;
do
    cwebp $image -o $image".webp" >/dev/null 2>&1
done
