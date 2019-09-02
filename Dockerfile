FROM openjdk:8-jre

WORKDIR /opt
VOLUME /opt/coin
EXPOSE 9921 9922

RUN wget https://github.com/virtualeconomy/v-systems/releases/download/v0.1.1/v-systems-0.1.1.jar
RUN mkdir -p /opt/coin/data
COPY ./vsys-mainnet.conf /opt/

ENTRYPOINT ["java", "-jar", "v-systems-0.1.0.jar", "vsys-mainnet.conf"]
