# Cloud Native Application 
**This application is implemented using SpringBoot, Angular, MySQL/MongoDB, Docker/Docker-compose, and Kubernetes/minikube**


**This application is composed of following microservices:**

1- **ng-course-ui** :  docker image of an Angular application (hosted on an NGinx server). This will be the Web component.

2- **spring-core-api** : docker image of a Spring Boot application (MVC, Spring data-jpa) with MySQL as the database.
    This will act as the core backend RESTful endpoint (API gataeway)
    
3- **spring-mongodb-api** : docker image of a Spring Boot application (MVC, Spring data-mongodb) with MongoDB as the database.
        This will be a RESTful endpoint to access NoSQL data (MongoDB collections)
    
4- **data-initialzr** : docker image of a linux-based image with cURL installed and some starter data. 
        This will be run once at the deployment-time to initilaize the databases with proper configuration/starter data 
        (using cURL scripts to invoke REST endpoints)
  
------------------------------------------------------------------------------------------------------------------------------------

**Code Repositories:**
 
   ng-course-ui (Angular) ->
   https://github.com/AshkIza/Angular
   
   
   spring-core-api (SpringBoot):
   https://github.com/AshkIza/spring-core-api
   
   spring-mongodb-api (SpringBoot): 
    
   DataInitialzr (start-up scripts/cURL) ->
   
 ------------------------------------------------------------------------------------------------------------------------------------

**How to deploy this application ?**
There are two options:

1-deploy it locally on a docker engine environment (using **docker-compose**)

    YAML file for docker-compose deployments : 'docker-compose-courseApp.yml'  

2- deploy it on a **kuberbetes cluster : Managed (GKE/EKS) or self-managed (Minikube)**

    NOTE: for development enviroment, you can deploy it locally on minikube - which is a one-node kubernetes cluster)
    YAML file for kubernets deployments :  'k8s-courseApp.yml'
   
------------------------------------------------------------------------------------------------------------------------------------

**How to Access the docker images ?**
Following links helps you to download the images from **DockerHub**
    
    ng-course-ui -> 
    spring-core-api- ->
    spring-mongodb-api ->
    data-initialzr ->
    MySQL ->
    MongoDB -> 
   
 -----------------------------------------------------------------------------------------------------------------------------------
 Following links help you to fill in the knowledge gap:
 
 Spring Boot, Mysql, React docker compose : https://www.callicoder.com/spring-boot-mysql-react-docker-compose-example/
