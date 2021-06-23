#!/bin/sh

images=$(find ../static/images/ -type f -iname '*'.png)
for image in $images;
do
    base=`basename $image .png`
    cwebp $image -o ../static/images/$base".webp" >/dev/null 2>&1
done
