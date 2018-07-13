
FROM openjdk:8-jre-alpine
ADD target/ /opt/
WORKDIR /opt

# LOCAL | DOCKER
#EXPOSE 9000
# KUBE
EXPOSE 8080

ENTRYPOINT exec java -Xms128m -Xmx128m $JAVA_OPTS -jar kafdrop.jar
