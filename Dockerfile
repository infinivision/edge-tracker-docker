FROM edge-opencv-arm64:0.1.6

WORKDIR /tmp

# install edge-tracker
ENV EDGE_TRACKER_VERSION=0.1.6
COPY edge-tracker-${EDGE_TRACKER_VERSION}.tar.gz /tmp/
RUN tar xzvf edge-tracker-${EDGE_TRACKER_VERSION}.tar.gz
RUN mkdir -p /tmp/edge-tracker-${EDGE_TRACKER_VERSION}/build
WORKDIR /tmp/edge-tracker-${EDGE_TRACKER_VERSION}/build
RUN cmake ..
RUN make
WORKDIR /tmp/edge-tracker-${EDGE_TRACKER_VERSION}
RUN bin/export 32 64 70 80 90 100

# copy dlib face model
COPY shape_predictor_68_face_landmarks.dat /tmp/edge-tracker-${EDGE_TRACKER_VERSION}

# entrypoint
#ENTRYPOINT bin/main
