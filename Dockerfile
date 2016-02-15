FROM nimmis/alpine-java

MAINTAINER nimmis <kjell.havneskold@gmail.com>

COPY bin/mc_dl /usr/local/bin
#COPY spigot_build /etc/run_always/
#COPY  apache.sh /etc/service/apache/run

#default directory for SPIGOT-server
ENV MC_HOME /minecraft

RUN apk update && apk upgrade && \
    echo "minecraft:x:500:500:minecraft:/minecraft:/bin/bash" >> /etc/passwd && \
    echo "minecraft:x:500:miecraft" >> /etc/group && \
    rm -rf /var/cache/apk/*

VOLUME /minecraft

# expose minecraft port
EXPOSE 25565

