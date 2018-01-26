From openjdk:8-jre-alpine
LABEL maintainer "Rizbe"

# Add user minecraft
RUN apk add -U wget bash
RUN addgroup -g 1000 minecraft \
  && adduser -Ss /bin/false -u 1000 -G minecraft -h /home/minecraft minecraft \
  && mkdir /data \
  && chown minecraft:minecraft /data
COPY entrypoint.sh /tmp/
ENV eula=false
WORKDIR /data
EXPOSE 25565
VOLUME /data
ENTRYPOINT sh /tmp/entrypoint.sh
