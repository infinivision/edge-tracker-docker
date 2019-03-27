FROM arm64v8/ubuntu:16.04

RUN apt-get -y update && apt-get install -y build-essential coreutils pkg-config cmake libglib2.0-dev libavcodec-dev libavformat-dev libswscale-dev libavresample-dev libfftw3-dev libgoogle-glog-dev libjpeg-dev libpng16-dev libjasper-dev libtiff5-dev libwebp-dev tzdata

# configure timezone
RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

WORKDIR /tmp

# install opencv
COPY opencv-3.4.2.tar.gz /tmp/
RUN tar xzvf opencv-3.4.2.tar.gz
RUN mkdir /tmp/opencv-3.4.2/build
WORKDIR /tmp/opencv-3.4.2/build
RUN cmake ..
RUN make
RUN make install

