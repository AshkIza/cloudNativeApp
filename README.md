# Cloud Native Application 
**This application is implemented using SpringBoot, Angular, MySQL/MongoDB, Docker/Docker-compose, and Kubernetes/minikube**.

We are building a  [Learning Management System (LMS)](https://en.wikipedia.org/wiki/Learning_management_system) based on micro-services Architecture. Each major component of the system is designed, built and deployed sepearately within its own Container / Pod. This helps to scale the application at ease and also make use of differerent technologies for building the app.

**This application is composed of the following modules:**

1- **[ng-course-ui](https://github.com/AshkIza/Angular)** :  docker image of an Angular application (hosted on an NGinx server). This will be the Web component.

2- **[spring-core-api](https://github.com/AshkIza/spring-core-api)** : docker image of a Spring Boot application (MVC, Spring data-jpa) with MySQL as the database.
    This will act as the core backend RESTful endpoint (API gataeway)
    
3- **spring-mongodb-api** : docker image of a Spring Boot application (MVC, Spring data-mongodb) with MongoDB as the database.
        This will be a RESTful endpoint to access NoSQL data (MongoDB collections)
    
-----------------------------------------------------------------------------------------------------------------------------------

**System Architecture :**

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/system-design-architecture.png)

------------------------------------------------------------------------------------------------------------------------------------

**Build**

   Code Repositories:
   https://github.com/AshkIza/Angular          -> (ng-course-ui (Angular))
 
   https://github.com/AshkIza/spring-core-api  -> spring-core-api (SpringBoot)
   
   spring-mongodb-api (SpringBoot): 
   
   
   **Docker image for each module has been built (docker build / Dockerfile) and pushed to the Docker Hub** :
            
    ng-course-ui -> 
    spring-core-api- ->
    spring-mongodb-api ->
   
 ------------------------------------------------------------------------------------------------------------------------------------

**Deploy**

During the deployments, docker images will be pulled from the Docker Hub, and be deployed using YAML deployemnt files. 
Angular (web-tier), Spring (service-tier), and MySQL (data-tier) images will be deployed in separate containers/pods.

You can deploy the application either,

1- On a **Docker Engine**

    YAML file 'docker-compose.yml' includes all deployment instructions for the docker-compose.
        docker-compose up   
        docker-compose down (to undeploy and remove the containers)
    Run './data-initialzr.sh' to load some starter data (data-initialzr.sql) into MySQL database.
   The application can now be accessed from [http://localhost:9090](http://localhost:9090)

Or,


2- On a **kuberbetes Cluster**

    You can use either Managed (Google GKE / Amazon EKS) or self-managed Kubernetes cluster.
    For development/test enviroments, you can deploy it locally on minikube - which is a single-node kubernetes cluster.
   
    YAML file for kubernets deployments is  'k8s-courseApp.yml'
   
   
------------------------------------------------------------------------------------------------------------------------------------

**How does this application look like? (Web-tier)**

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-home-page.png)

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-course-list.png)

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-book-inventory.png)




 -----------------------------------------------------------------------------------------------------------------------------------
 Useful links:
 
 Learning Management System : https://en.wikipedia.org/wiki/Learning_management_system
 
 Spring Boot, Mysql, React docker compose : https://www.callicoder.com/spring-boot-mysql-react-docker-compose-example/
