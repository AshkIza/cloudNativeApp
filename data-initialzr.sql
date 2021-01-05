use lms;
delete from book;
delete from course;
delete from topic;

insert into topic (id, details, name) values (1, 'containarization including docker and kubernetes','Containers');
insert into topic (id, name, details) values (2, 'Java Core libraries - collections, streams, concurrent','Java Core');
insert into topic (id, name, details) values (3, 'Spring framework - Core/MVC/Data/Security & springBoot','Spring');
insert into topic (id, name, details) values (4, 'Front end technologies - javascript, typescript, AngularJs, RxJs, HTML 5.0, CSS','Frontend');
insert into topic (id, name, details) values (5, 'Distributed systems and microservices','System design');

insert into course (id, description, title, recommended_book_id, topic_id) values (1, 'k8s for Beginners [FULL COURSE in 4 Hours]', 'Kubernetes Tutorial', null, 1);
insert into course (id, description, title, recommended_book_id, topic_id) values (2, 'Java Collections Streams Excutorservice JDK8','Java Core', null, 2);
insert into course (id, description, title, recommended_book_id, topic_id) values (3, 'Spring Boot MVC Data Actuator','Spring Boot Quick Start', null, 3);
insert into course (id, description, title, recommended_book_id, topic_id) values (4, 'Angular 7 CRUD Operation', 'Angular 7 CRUD, Service, Components, class models ', null, 4);
insert into course (id, description, title, recommended_book_id, topic_id) values (5, 'Google Certified Associate Cloud Engineer', 'Udemy course, hands on with Google Cloud Platform (GCP)', null, 5);

insert into book (id, authur, description, isb, online_resource, title,  url_link, topic_id) values(1, 'Bijith NV', '', '', 0, 'Angular CRUD', 'https://www.youtube.com/watch?v=6m45I75RD_M', 4);
insert into book (id, authur, description, isb, online_resource, title,  url_link, topic_id) values(2, 'Mosh', '', '', 0, 'Angular Tutorial for Beginners', 'https://www.youtube.com/watch?v=k5E2AVpwsko', 4);
insert into book (id, authur, description, isb, online_resource, title,  url_link, topic_id) values(3, 'DesignCourse', '', '', 0, 'Learn Angular 7 in 50 Minutes', 'https://www.youtube.com/watch?v=5wtnKulcquA', 4);
insert into book (id, authur, description, isb, online_resource, title,  url_link, topic_id) values(4, 'Travery Media', '', '', 0, 'Angular In 60 Minutes', 'https://www.youtube.com/watch?v=KhzGSHNhnbI', 4);
  
