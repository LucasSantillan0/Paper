FROM ubuntu
COPY . .
RUN apt update  && \
    apt install -y default-jdk
EXPOSE 25565
CMD ["java", "-Xms4G", "-Xmx4G", "-jar", "paper.jar" ]

