FROM ubuntu:20.04

# Avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    libjpeg62 \
    libpng-dev \
    libtiff-dev \
    libjpeg-dev \
    libz-dev \
    libproj-dev \
    liblzma-dev \
    libjbig-dev \
    libzstd-dev \
    libgeotiff-dev \
    libwebp-dev \
    libsqlite3-dev \
    libstdc++6

WORKDIR /opt/lastools

# Download and extract LAStools
RUN wget https://downloads.rapidlasso.de/LAStools.tar.gz && \
    tar xvzf LAStools.tar.gz && \
    rm LAStools.tar.gz

# Set library path
ENV LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH

# Add LAStools to PATH
ENV PATH /opt/lastools/bin/:$PATH

CMD ["tail", "-f", "/dev/null"]