# ncs-lane-following-demo
***

## How use this docker image
First plug in an NCS and run the following command on your duckiebot

`
duckiebot $ docker run -it --name ncs_following --net host --privileged -v /dev:/dev -v /data:/data allenou/ncs_following_demo
`

## Image reference
This docker image is built from a github project called [ncs_lane_following](https://github.com/ARG-NCTU/ncs_lane_following) under ARG-NCTU, which is made by [Peter Hung](https://github.com/losttime1001)

#TODO model explanation

#TODO model visualization

#TODO demo video

[![Docker Build Status](https://img.shields.io/docker/build/allenou/ncs_following_demo.svg)](https://hub.docker.com/r/allenou/ncs_following_demo/builds)
