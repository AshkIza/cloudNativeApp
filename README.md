# Cloud Native Application 
**Technology Stack used :SpringBoot, Angular, MySQL/MongoDB, Docker/Docker-compose, Kubernetes/minikube**

**This application is composed of multiple microservices as follows:**

1- **ng-course-ui** :  docker image of an Angular application (hosted on an NGinx server). This will be the Web component.

2- **spring-core-api** : docker image of a Spring Boot application (MVC, Spring data-jpa) with MySQL as the database.
    This will acts as the core backend RESTful endpoint (API gataeway)
    
3- **spring-mongodb-api** : docker image of a Spring Boot application (MVC, Spring data-mongodb) with MongoDB as the database.
    This will be a RESTful endpoint to access NoSQL data (MongoDB collections)
    
4- **data-initialzr** : docker image of a linux-base image with cURL installed and some starter data. 
   This will be run once to populate Databases with configuration/starter data (using cURL commands to invode REST endpoints)
   
   
**How to Access the docker images?**
Following links helps you to download the images from **DockerHub**
    
    ng-course-ui -> 
    spring-core-api- ->
    spring-mongodb-api ->
    data-initialzr ->
    MySQL ->
    MongoDB -> 
   
**How to deploy this application?**
There are two options.

1-deploy it locally on a docker engine environment (using **docker-compose**)
  YAML file for docker-compose deployments : 'docker-compose-courseApp.yml'  

2- deploy it on a **kuberbetes cluster**
  NOTE: for development enviroment, you can deploy it locally on minikube - which is a one-node kubernetes cluster)
  YAML file for kubernets deployments :  'k8s-courseApp.yml'
  
  
 Here are the links to each module's code repository:
    
    Angular -> https://github.com/AshkIza/Angular
    
    Springboot -> https://github.com/AshkIza/Spring
    
    DataInitialzr ->
 
  
   
