DROP DATABASE IF EXISTS db_exam;
CREATE DATABASE db_exam;

DROP TABLE IF EXISTS db_exam.student;
CREATE TABLE db_exam.student(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  name VARCHAR(255) NOT NULL UNIQUE COMMENT '用户名',
  password VARCHAR(255) NOT NULL COMMENT '密码'
)COMMENT '学生表';
SELECT *
FROM db_exam.student;

DROP TABLE IF EXISTS db_exam.paper;
CREATE TABLE db_exam.paper(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  title VARCHAR(255) NOT NULL COMMENT '试卷名称'
)COMMENT'试卷表';
SELECT *
FROM db_exam.paper;

DROP TABLE IF EXISTS db_exam.test;
CREATE TABLE db_exam.test(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK',
  question VARCHAR(255) COMMENT '题目',
  answer VARCHAR(255) COMMENT '答案',
  score DOUBLE COMMENT '分数',
  paperId INT COMMENT 'FK'
)COMMENT '试题表';
SELECT *
FROM db_exam.test;

DROP TABLE IF EXISTS db_exam.student_test;
CREATE TABLE db_exam.student_test(
  id INT AUTO_INCREMENT PRIMARY KEY  COMMENT 'PK',
  studentId INT COMMENT 'FK',
  testId INT COMMENT 'FK',
  score DOUBLE COMMENT '得分'
)COMMENT '学生试题关联表';
SELECT *
FROM db_exam.student_test;

ALTER TABLE db_exam.test
    ADD CONSTRAINT
test_fk_paperId
FOREIGN KEY (paperId)
  REFERENCES db_exam.paper(id);

ALTER TABLE db_exam.student_test
    ADD CONSTRAINT
student_test_fk_studentId
FOREIGN KEY (studentId)
  REFERENCES db_exam.student(id);

ALTER TABLE db_exam.student_test
  ADD CONSTRAINT
  student_test_fk_testId
FOREIGN KEY (testId)
REFERENCES db_exam.test(id);

INSERT INTO db_exam.paper VALUE (NULL ,'JavaEE');
INSERT INTO db_exam.paper VALUE (NULL ,'JavaSE');

INSERT INTO db_exam.test VALUE (NULL ,'JSP','A',5.0,1);
INSERT INTO db_exam.test VALUE (NULL ,'Servlet','C',3.0,1);
INSERT INTO db_exam.test VALUE (NULL ,'EL','A',2.0,1);
INSERT INTO db_exam.test VALUE (NULL ,'Session','C',6.0,2);
INSERT INTO db_exam.test VALUE (NULL ,'req','B',3.0,2);
INSERT INTO db_exam.test VALUE (NULL ,'resp','D',2.0,2);


