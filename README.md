# Cloud Native Application 
**This application is implemented using SpringBoot, Angular, MySQL/MongoDB, Docker/Docker-compose, and Kubernetes/minikube**


**This application is composed of the following modules:**

1- **ng-course-ui** :  docker image of an Angular application (hosted on an NGinx server). This will be the Web component.

2- **spring-core-api** : docker image of a Spring Boot application (MVC, Spring data-jpa) with MySQL as the database.
    This will act as the core backend RESTful endpoint (API gataeway)
    
3- **spring-mongodb-api** : docker image of a Spring Boot application (MVC, Spring data-mongodb) with MongoDB as the database.
        This will be a RESTful endpoint to access NoSQL data (MongoDB collections)
    
4- **data-initialzr** : bash script (data-initialzr.sh) which loads some starter data (data-initialzr.sql) into the MySQL database.
  
------------------------------------------------------------------------------------------------------------------------------------

**Build**

   Code Repositories:
   
   ng-course-ui (Angular) ->
   https://github.com/AshkIza/Angular
   
   
   spring-core-api (SpringBoot):
   https://github.com/AshkIza/spring-core-api
   
   spring-mongodb-api (SpringBoot): 
   
   
   Docker image for each module has been built (using Dockerfiles) and pushed to the DockerHub (docker push):
            
    ng-course-ui -> 
    spring-core-api- ->
    spring-mongodb-api ->
   
 ------------------------------------------------------------------------------------------------------------------------------------

**Deploy**

During the deployments, docker images will be pulled (docker pull), and be deployed using YAML deployemnt files.

You can deploy the application either,

1- On a docker Engine (in your local environment -  **docker-compose**)

    YAML file (docker-compose.yml) to deploy angular/spring/MySQL containers within the docker Engine : 
        docker-compose up
        docker-compose down (to undeploy and remove the containers)
Or,
2- On a **kuberbetes cluster - Managed (GKE/EKS) or Self-managed (Minikube)**

    NOTE: for development enviroment, you can deploy it locally on minikube - which is a one-node kubernetes cluster)
    YAML file for kubernets deployments :  'k8s-courseApp.yml'
   
   
 -----------------------------------------------------------------------------------------------------------------------------------
 Useful links:
 
 Spring Boot, Mysql, React docker compose : https://www.callicoder.com/spring-boot-mysql-react-docker-compose-example/
