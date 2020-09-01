FROM gradle:jdk10 

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
