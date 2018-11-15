docker run -it -p 8000:8888 -p 0.0.0.0:6005:6006 -v ${1:-$PWD}:/home --runtime=nvidia senesence/tensorflow:1.12.0-gpu-py3 $2
