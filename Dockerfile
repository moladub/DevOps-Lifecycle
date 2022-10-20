FROM nginx:alpine
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar docker-jenkins-integration-sample.jar
ENTRYPOINT ["nginx","-jar","/docker-jenkins-integration-sample.jar"]