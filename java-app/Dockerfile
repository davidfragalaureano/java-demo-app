# Build app
FROM maven:3.5-jdk-8 AS build  
ENV JAR_NAME=demo-0.0.1-SNAPSHOT-exec.jar
WORKDIR /home/app
COPY pom.xml .
COPY .m2/settings.xml ./
COPY src src
RUN mvn -s settings.xml clean package  -Dmaven.test.skip=true

# Run tests
#FROM maven:3.5-jdk-8 AS tests
#WORKDIR /home/app
#COPY pom.xml .
#COPY .m2/settings.xml .
#COPY src .
#RUN mvn test

# Execute app 
FROM openjdk:8-jre
ENV JAR_NAME=demo-0.0.1-SNAPSHOT-exec.jar
WORKDIR /home/app
COPY --from=build /home/app/target/${JAR_NAME} demo.jar
EXPOSE 8080  
ENTRYPOINT ["java","-jar","/home/app/demo.jar"]