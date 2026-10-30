FROM ubuntu
COPY . .
RUN apt update  && \
    apt install -y default-jdk
EXPOSE 25565
ENTRYPOINT ["java", "-Xms1G", "-Xmx2G", "-jar", "paper.jar"]

