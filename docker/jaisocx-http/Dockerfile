FROM jaisocx/webserver:mac.latest

COPY ./conf /usr/lib/jaisocx-http/apps/congratulations/conf
COPY ./server.properties /usr/lib/jaisocx-http/etc/server.properties

WORKDIR /usr/lib/jaisocx-http

CMD "java" "-Xms${JAVA_XMS}" "-Xmx${JAVA_XMX}" "-jar" "out/artifacts/jaisocx_http_jar/jaisocx-http.jar" "-nogui"

EXPOSE 80