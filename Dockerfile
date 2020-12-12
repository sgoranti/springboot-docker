#From which version Java, you are going to map the Docker
FROM openjdk:8

# Port number which you want to expose
EXPOSE 8088

# Add a jar to a particular target and the jar that you want to map to Docker container
ADD target/springboot-docker.jar   springboot-docker.jar

#Provide the entrypoint
ENTRYPOINT ["java","-jar","springboot-docker.jar"]