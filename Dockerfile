FROM openjdk:8-jre

WORKDIR /opt
VOLUME /opt/coin
EXPOSE 9921 9922

RUN wget https://github.com/virtualeconomy/v-systems/releases/download/v0.2.2/v-systems-0.2.2.jar -O v-systems.jar
RUN mkdir -p /opt/coin/data
COPY ./vsys-mainnet.conf /opt/

ENTRYPOINT ["java", "-jar", "v-systems.jar", "vsys-mainnet.conf"]
