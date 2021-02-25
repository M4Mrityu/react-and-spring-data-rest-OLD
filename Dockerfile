FROM openjdk:12-alpine
WORKDIR /app
COPY ./target/react-and-spring-data-*.jar app.jar
ENV JAVA_OPTS="-Xmx512mg -Xms256m" 
ENTRYPOINT ["java" , "-jar" , "app.jar"]
