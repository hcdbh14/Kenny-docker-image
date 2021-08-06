FROM alpine
WORKDIR /root/hello-bmc
COPY /src/HelloBMC.java/ /root/hello-bmc

# install JDK
RUN apk add openjdk8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk
ENV PATH $PATH:$JAVA_HOME/bin

# Compile HelloBMC
RUN javac HelloBMC.java

ENTRYPOINT java HelloBMC