FROM duckietown/rpi-duckiebot-base

#COPY qemu-arm-static /usr/bin/qemu-arm-static 

RUN mkdir /home/ncsdk
COPY ncsdk /home/ncsdk
WORKDIR /home/ncsdk
RUN make install

WORKDIR /home/software/catkin_ws/src/
RUN git clone https://github.com/ARG-NCTU/ncs_lane_following.git 
RUN /bin/bash -c "cd /home/software/ && source /opt/ros/kinetic/setup.bash && catkin_make -C catkin_ws/"

COPY run_ncslanefollowingdemo.sh .

CMD [ "./run_ncslanefollowingdemo.sh" ]
