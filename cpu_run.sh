docker run -it -p 8000:8888 -v ${1:-$PWD}:/home senesence/tensorflow:1.12.0-py3 $2
