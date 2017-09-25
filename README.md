# docker-ffmpeg
Dockerized FFmpeg

__!!! WORK IN PROGRESS !!!__

Playing around with FFmpeg and creating a container with preset conversions.
Eg: convert large iPhone .mov files to more convenient and smaller .mp4 files.



## BUILD
docker build -t toughiq/ffmpeg .

## RUN
docker run --rm -it -v${PWD}/work:/work toughiq/ffmpeg -i V*.MOV out.mp4
