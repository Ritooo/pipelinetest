FROM adoptopenjdk/openjdk11:alpine-jre
ADD target/test.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=prod -jar /app.jar