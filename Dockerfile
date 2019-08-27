FROM openjdk:12-oracle

ARG SAXON_VERSION="9.9.1-4"
RUN curl http://central.maven.org/maven2/net/sf/saxon/Saxon-HE/${SAXON_VERSION}/Saxon-HE-${SAXON_VERSION}.jar -o /opt/saxon.jar

ARG RESOLVER_VERSION="1.2"
RUN curl http://central.maven.org/maven2/xml-resolver/xml-resolver/${RESOLVER_VERSION}/xml-resolver-${RESOLVER_VERSION}.jar -o /opt/resolver.jar

ENTRYPOINT ["java", "-cp", "/opt/saxon.jar:/opt/resolver.jar"]
