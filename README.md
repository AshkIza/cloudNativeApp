# How to build Cloud Native Applications by Angular, Spring Boot and Kubernetes 
**This application is implemented by SpringBoot 4.0, Angular 11.0, MySQL/MongoDB, Docker/Docker-compose, and Kubernetes (Minikube / GKE)**.

We are building a  [Learning Management System (LMS)](https://en.wikipedia.org/wiki/Learning_management_system) based on **micro-services Architecture**. Each major component of the system is designed, built and deployed sepearately within its own Container / Pod. This helps us to scale the application at ease and make use of differerent technologies for building our app.


**This application is composed of the following modules:**

1- **[ng-course-ui](https://github.com/AshkIza/Angular)** :  docker image of an Angular application (hosted on an NGinx server). This will be the Web component.

2- **[spring-core-api](https://github.com/AshkIza/spring-core-api)** : docker image of a Spring Boot application (MVC, Spring data-jpa) with MySQL as the database.
    This will act as the core backend RESTful endpoint (API gataeway)
    
3- **spring-mongodb-api** : docker image of a Spring Boot application (MVC, Spring data-mongodb) with MongoDB as the database.
        This will be a RESTful endpoint to access NoSQL data (MongoDB collections)
        
4- **MySQL and MongoDB** docker imgages : These database images are provied by the vendors (built from a Linux-alphine image). They act as Database servers. 
    
5- **Persistent Volume (PV)** : Since Containers are designed to be _epehmeral_, we mount a persistent volume to the MySQL/MongoDB docker containers (data volume life-cycle is beyond containers).<br/>
We use **dockervolume** folder in the host machine as the data volume (you can create it by running 'mkdir -p dockervolume').<br/>
In case of _Hosted_ solutions, you can use any object storage solution provided by your cloud provider (examples are _Google Cloud Storage_ and _Amazon S3 Buckets_).


We will be building 3 docker images (ng-course-ui, spring-core-api, spring-mongodb-api) for our system. We then write YAML deploment files to instruct docker-compose/kubernetes how to deply these images.
    
-----------------------------------------------------------------------------------------------------------------------------------

## System Architecture :

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/system-design-architecture.png)

------------------------------------------------------------------------------------------------------------------------------------

## Build : 

   **Code Repositories**:
   
   https://github.com/AshkIza/Angular          
 
   https://github.com/AshkIza/spring-core-api  
   
   
   
   **Docker Image Repository**:
   
   https://hub.docker.com/r/ashkan2020/cloudnative
   
   Docker image for each module has been built (Dockerfile) and pushed to the Docker Hub Repository ['ashkan2020/cloudnative'](https://hub.docker.com/r/ashkan2020/cloudnative/tags?page=1&ordering=last_updated) with the following **tag**s:
            
    ashkan2020/cloudnative:ng-course-ui         
   
    ashkan2020/cloudnative:spring-core-api    
   
 
   
 ------------------------------------------------------------------------------------------------------------------------------------

## Deploy : 

During the deployments, docker images will be pulled from the Docker Hub, and be deployed using YAML deployemnt files. 
Angular (web-tier), Spring (service-tier), and MySQL (data-tier) images will be deployed in separate containers/pods.

You can deploy the application either,

**1- On a Docker Engine**

You can simply deploy/undeploy the whole application by using following commands.
YAML file 'docker-compose.yml' includes all deployment instructions for the docker-compose. To load some starter data into your application, you can run _'./data-initialzr.sh'_.
    
    docker-compose up   
    docker-compose down   (to undeploy and remove the containers)
 
   The application can now be accessed from [http://localhost:9090](http://localhost:9090)
   
    
   ![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/docker-logs-multicontainers.png)   

Or,


**2- On a kuberbetes Cluster**

You can use either **Hosted** (Google GKE / Amazon EKS) or **Local** (Minikube) Kubernetes cluster.
   
   **Minukube :** 
   
   For development/test enviroments, you can deploy it locally on minikube - which is a single-node kubernetes cluster.
   
    YAML file for kubernets deployments is  'k8s-courseApp.yml'
   
   **Google Cloud Kubernetes (GKE) :**
   
------------------------------------------------------------------------------------------------------------------------------------

## How does this application look like? (Web-tier)

![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-home-page.png)


![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-course-list.png)


![alt text](https://github.com/AshkIza/cloudNativeApp/blob/main/lms-book-inventory.png)






 -----------------------------------------------------------------------------------------------------------------------------------
 #### Useful links : 
 
 Learning Management System : https://en.wikipedia.org/wiki/Learning_management_system
 
 Spring Boot, Mysql, React docker compose : https://www.callicoder.com/spring-boot-mysql-react-docker-compose-example/
