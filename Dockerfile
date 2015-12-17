FROM java

MAINTAINER mnagaku

ADD docker-jna-sample /docker-jna-sample

ENV DEBIAN_FRONTEND noninteractive

RUN echo "Asia/Tokyo" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata \
    && apt-get update && apt-get upgrade -y && apt-get install -y locales build-essential \
    && sed 's/# en_US.UTF-8/en_US.UTF-8/' -i /etc/locale.gen && locale-gen \
    && cd /docker-jna-sample \
    && g++ -fPIC -O0 -g3 -c HelloWorld.cpp \
    && g++ -shared -Wl,-soname,libHelloWorld.so.1 -o libHelloWorld.so.1.0 HelloWorld.o \
    && ln -s libHelloWorld.so.1.0 libHelloWorld.so \
    && javac -cp HelloWorld.jar CallHelloWorld.java

CMD tail -f /dev/null
