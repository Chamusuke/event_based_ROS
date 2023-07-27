
clear
resize -s 40 110 
cat text/chamusuke.txt
cat nvidia_run.sh
#"Editer::  Nakamura Hayato 19X0118"
#"2022-12 ~~~"
# ------------------------------------------------------
docker run -it --rm --name event_based -e DISPLAY=$DISPLAY \
	--volume=/tmp/.X11-unix:/tmp/.X11-unix:rw \
	--volume=$HOME/.Xauthority:$HOME/.Xauthority:rw \
	--volume=$HOME/event_based/shared_dir:/home/autoware/shared_dir:rw \
	--device=/dev/ttyUSB0:/dev/ttyUSB0 \
  --env=XAUTHORITY=$HOME/.Xauthority \
	--env=USER_ID=$(id -u) \
	--privileged --net=host \
	--runtime=nvidia \
	-e NVIDIA_VISIBLE_DEVICES=all \
	-e NVIDIA_DRIVER_CAPABILITIES=all \
       	chamusuke/event_based:2.0

