# Use Ubuntu 22.04 base image
FROM ubuntu:22.04

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y curl fontconfig

# Download and install dependencies for PrinceXML
RUN apt-get install -y \
    libaom3 \
    libavif13 \
    libjpeg8 \
    liblcms2-2 \
    libtiff5 \
    libwebp7 \
    libwebpdemux2 \
    libxml2    

# Download and install PrinceXML .deb package
RUN curl -LO https://www.princexml.com/download/prince_15.3-1_ubuntu22.04_arm64.deb && \
    dpkg -i prince_15.3-1_ubuntu22.04_arm64.deb && \
    rm prince_15.3-1_ubuntu22.04_arm64.deb

# TRY TO USE THIS, IF ERR ARCHITECTURE MISMATCH!!!    
#RUN curl -LO https://www.princexml.com/download/prince_15.3-1_ubuntu22.04_amd64.deb && \
#    dpkg -i prince_15.3-1_ubuntu22.04_amd64.deb && \
#    rm prince_15.3-1_ubuntu22.04_amd64.deb
#

