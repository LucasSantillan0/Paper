FROM ubuntu
COPY . .
RUN apt update  && \
    apt install -y default-jdk \
     mv /world /world-baked
EXPOSE 25565
ENTRYPOINT ["sh", "-c", "cp -rn /world-baked/. /world/ && exec java -Xms1G -Xmx2G -jar paper.jar"]

