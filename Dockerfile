FROM maven as build
WORKDIR /app
COPY . .
RUN mvn install

FROM openjdk:11.0
EXPOSE 9090
ADD target/java-example.war java-example.war
ENTRYPOINT ["java","-war","/java-example.war"]
