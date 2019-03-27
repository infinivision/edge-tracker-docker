FROM edge-opencv-arm64:0.1.6

WORKDIR /tmp

# install eigen
COPY eigen-3.3.4.tar.gz /tmp/
RUN tar xzvf eigen-3.3.4.tar.gz
RUN mv Eigen /usr/include/aarch64-linux-gnu/
COPY eigen3.pc /usr/local/lib/pkgconfig/

# install cpptoml
COPY cpptoml.h /usr/include/aarch64-linux-gnu/

# install dlib
COPY arm64/dlib-19.15-arm64.tar.gz /tmp/
RUN tar xzvf dlib-19.15-arm64.tar.gz
RUN mv dlib/include/dlib /usr/include/aarch64-linux-gnu/
RUN mv dlib/lib/libdlib.a /usr/lib/aarch64-linux-gnu/
RUN mv dlib/dlib.pc /usr/lib/aarch64-linux-gnu/pkgconfig/

# install ncnn
COPY arm64/ncnn-arm64.tar.gz /tmp/
RUN tar xzvf ncnn-arm64.tar.gz
RUN mv ncnn/include/ncnn /usr/include/aarch64-linux-gnu/
RUN mv ncnn/lib/libncnn.a /usr/lib/aarch64-linux-gnu/
RUN mv ncnn/ncnn.pc /usr/lib/aarch64-linux-gnu/pkgconfig/

# install tracker KCF
COPY arm64/tracker-kcf-arm64.tar.gz /tmp/
RUN tar xzvf tracker-kcf-arm64.tar.gz
RUN mv tracker-kcf/include/tracker /usr/include/aarch64-linux-gnu/
RUN mv tracker-kcf/lib/libtrackerKCF.a /usr/lib/aarch64-linux-gnu/
RUN mv tracker-kcf/tracker-kcf.pc /usr/lib/aarch64-linux-gnu/pkgconfig/

