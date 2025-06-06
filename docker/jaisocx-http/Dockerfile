# amd64 CPU Architecture, when not working, I have one more docker build, with arm64/v8
FROM jaisocx/webserver:amd64.3.0.16

# arm64/v8 CPU Architecture
# FROM jaisocx/webserver:mac.3.0.16

COPY ./conf /usr/lib/jaisocx-http/apps/congratulations/conf
COPY ./server.properties /usr/lib/jaisocx-http/etc/server.properties

WORKDIR /usr/lib/jaisocx-http

CMD "java" "-Xms${JAVA_XMS}" "-Xmx${JAVA_XMX}" "-jar" "out/artifacts/jaisocx_http_jar/jaisocx-http.jar" "-nogui"

EXPOSE 2297

