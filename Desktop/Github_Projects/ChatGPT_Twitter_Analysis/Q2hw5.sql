
create schema hw5;
use hw5;

CREATE TABLE students(    

    id int NOT NULL AUTO_INCREMENT,    

    name varchar(45) NOT NULL,    

    class int NOT NULL,    

    email_id varchar(65) NOT NULL,    

    PRIMARY KEY (id)    

);  

 

INSERT INTO students (name, class, email_id)     

VALUES ('Stephen', 6, 'stephen@javatpoint.com'),   

('Bob', 7, 'bob@javatpoint.com'),   

('Steven', 8, 'steven@javatpoint.com'),   

('Alexandar', 7, 'alexandar@javatpoint.com');  

 

 CREATE TABLE students_log(    

    user varchar(45) NOT NULL,    

    descreptions varchar(65) NOT NULL  

);  






DELIMITER //

CREATE TRIGGER promote_students_trigger AFTER UPDATE ON students
FOR EACH ROW
BEGIN
    IF NEW.class = OLD.class + 1 THEN
        UPDATE students SET class = NEW.class WHERE id = NEW.id;
        INSERT INTO students_log (user, descriptions) VALUES (connection_id(), CONCAT('Promoted student with id = ', NEW.id, ' to class ', NEW.class));
    END IF;
END //

DELIMITER ;















