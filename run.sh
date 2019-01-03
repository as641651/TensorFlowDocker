#docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2
#docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home -v $HOME/Image_data:/home/exercise/datasets --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2

#Add camera device to docker
#To find out where the camera is located
#sudo apt-get install v4l-utils
#v4l2-ctl --list-devices
#docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home -v $HOME/Image_data:/home/exercise/datasets  --device /dev/video0:/dev/video0  --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2


#Add camera and audio
#Breaks with --priviledge -v /dev:/dev when installed with alsa pulseaudio
docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home -v $HOME/Image_data:/home/exercise/datasets --device /dev/video0 --device /dev/snd  -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native -v ~/.config/pulse/cookie:/root/.config/pulse/cookie  --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2

#docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home -v $HOME/Image_data:/home/exercise/datasets  --device /dev/snd -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native -v ~/.config/pulse/cookie:/root/.config/pulse/cookie --group-add $(getent group audio | cut -d: -f3)  --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2
