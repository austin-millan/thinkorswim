docker run -ti \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       linux-thinkorswim \
       /usr/local/thinkorswim/thinkorswim
