# docker-ffmpeg
Dockerized FFmpeg

__!!! WORK IN PROGRESS !!!__

Playing around with FFmpeg and creating a container with preset conversions.
Eg: convert large iPhone .mov files to more convenient and smaller .mp4 files.

This image runs as User with __UID 1000__ within the container. For most Linux Desktop Distros this might be your UserID, so file permissions should be fine.

## BUILD
`docker build -t toughiq/ffmpeg .`

## RUN
### Convert Video
`docker run --rm -it -v${PWD}/work:/work toughiq/ffmpeg -i V*.MOV out.mp4`

### Extract .mp3 from .mp4
`docker run -it -v ${PWD}:/work toughiq/ffmpeg:latest -i sample.mp4 -q:a 0 -map a sample.mp3`
