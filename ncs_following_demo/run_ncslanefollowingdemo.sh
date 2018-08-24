#!/bin/sh

set -e

source /home/software/docker/env.sh

roslaunch ncs_following ncs_lane_following.launch model:=nips_loop.graph veh:=$HOSTNAME
