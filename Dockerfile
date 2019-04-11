FROM openjdk:8-jre-alpine

RUN wget -O /opt/saxon.jar http://central.maven.org/maven2/net/sf/saxon/Saxon-HE/9.9.1-2/Saxon-HE-9.9.1-2.jar
RUN wget -O /opt/resolver.jar http://central.maven.org/maven2/xml-resolver/xml-resolver/1.2/xml-resolver-1.2.jar

ENTRYPOINT ["java", "-cp", "/opt/saxon.jar:/opt/resolver.jar"]
