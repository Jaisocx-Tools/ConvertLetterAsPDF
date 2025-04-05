FROM alpine:3.20.3

USER root

RUN apk add --no-cache bash curl ca-certificates
RUN apk add --no-cache freetype fontconfig ttf-dejavu libxrender
RUN apk add --no-cache libjpeg-turbo libpng zlib
RUN apk add --no-cache libx11 libxext libxft
RUN apk add --no-cache glib icu-libs
RUN apk add --no-cache libxml2 
RUN apk add --no-cache tiff 
RUN apk add --no-cache giflib 
RUN apk add --no-cache libwebp 
RUN apk add --no-cache libwebpdemux 
RUN apk add --no-cache libavif 
RUN apk add --no-cache aom 
RUN apk add --no-cache lcms2


WORKDIR /var/lib

RUN curl -LO https://www.princexml.com/download/prince-15.4.1-alpine3.20-aarch64.tar.gz
RUN tar -xvzf prince-15.4.1-alpine3.20-aarch64.tar.gz
WORKDIR /var/lib/prince-15.4.1-alpine3.20-aarch64
RUN ./install.sh

CMD ["tail", "-f", "/dev/null"]

