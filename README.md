# docker-lastools
Docker for LAStools  
Based on Ubuntu 20.04  

This container has the open source versions listed on https://github.com/LAStools/LAStools  

LASTools open source tools:  
laszip  
lasinfo  
lasindex  
las2las  
lasmerge  
txt2las  
las2txt  
lasprecision  
These are LGPL 2.1 as shown here https://github.com/LAStools/LAStools/blob/master/LICENSE.txt

## to build the image:
docker build --platform linux/amd64 -t lastools:latest . 

##note
now all tool image names have a 64 postfix to indicate they are built for 64 bit architecture.
also when building on silicon macs use the --platform linux/amd64 flag.

## my test command to get info from a las file:
docker run --rm --platform linux/amd64 -v /Users/mawdo/docker-lastools/data:/data lastools lasinfo64 /data/NEONDSSampleLiDARPointCloud.las -odix _info -otxt
