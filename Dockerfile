FROM adoptopenjdk:11
EXPOSE 9090
ADD target/java-example.war java-example.war
ENTRYPOINT ["java","-war","/java-example.war"]
