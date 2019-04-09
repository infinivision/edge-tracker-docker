FROM edge-ubuntu-arm64:16.04
ARG OPENCV_DEV_DEB=OpenCV-3.4.2-arm64-dev.deb
ARG OPENCV_LIB_DEB=OpenCV-3.4.2-arm64-libs.deb

WORKDIR /tmp

# install opencv
COPY ${OPENCV_DEV_DEB} ${OPENCV_LIB_DEB} /tmp/
RUN dpkg -i ${OPENCV_DEV_DEB} ${OPENCV_LIB_DEB}

