FROM openjdk:11
EXPOSE 9090
ADD target/java-example.war java-example.war
ENTRYPOINT ["java","-jar","java-example.war"]
