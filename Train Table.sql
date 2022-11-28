#CREATING A TABLE TRAIN AND INSERTING VALUES INTO IT 

CREATE TABLE TRAIN (TrainNum numeric, TrainName varchar(20),Source varchar(20),Destination varchar(20),DisTravelled numeric,NumOfCoaches numeric,Type varchar(20));
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2001, 'Uzhavan Express','Thanjavur','Chennai',1,2500,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2002, 'Chennai Express','Coimbatore','Chennai',12,940,'Local');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2003, 'Coimbatore Express','Chennai','Coimbatore',35,670,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2004, 'Charminar Express','Hyderabad','Chennai',51,990,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2005, 'Shatadbi Express','Chennai','Pondy',19,1250,'Local');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2006, 'Mannai Express','Rameshwaram','Trichy',31,900,'Local');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2007, 'Pune Express','Bangalore','Pune',18,1259,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2008, 'Mangalore Express','Chennai','Managalore',10,3000,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2009, 'Bangalore Express','Chennai','Bangalore',8,2505,'Superfast');
INSERT INTO TRAIN(TrainNum,TrainName,Source,Destination,DisTravelled,NumOfCoaches,Type) VALUES(2010, 'Howrah Mail','Delhi','Chennai',11,3500,'Superfast');
SELECT * FROM TRAIN

#LOGICAL OPERATIONS AND,OR,Combination of AND & OR, NOT

SELECT * FROM TRAIN WHERE DisTravelled<50 AND Type='Superfast';
SELECT * FROM TRAIN WHERE TrainNum = 2001 OR TrainNum = 2005;
SELECT * FROM TRAIN WHERE Type ='Superfast' AND (Destination = 'Chennai' OR Destination = 'Bangalore');
SELECT TrainName
FROM TRAIN
WHERE NOT TrainName='Howrah Mail'


# CREATING ANOTHER TABLE IN NAME OF SCHEDULE

CREATE TABLE SCHEDULE(TrainNum numeric,OperatingDay varchar(20),ArrivalTime float,DepartureTime float);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2001,'Monday',6.04,12.50);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2002,'Tuesday',9.30,11.05);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2003,'Friday',6.00,12.00);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2004,'Thursday',12.02,23.05);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2005,'Wednesday',15.20,04.00);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2006,'Sunday',6.02,12.00);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2008,'Saturday',9.00,12.00);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2009,'Tuesday',6.20,12.00);
INSERT INTO SCHEDULE(TrainNum,OperatingDay,ArrivalTime,DepartureTime) VALUES(2010,'Wednesday',8.04,12.00);
SELECT * FROM SCHEDULE;


#INNER JOIN

SELECT TRAIN.TrainName,TRAIN.Type,SCHEDULE.ArrivalTime,SCHEDULE.DepartureTime
FROM TRAIN 
INNER JOIN SCHEDULE
ON TRAIN.TrainNum = SCHEDULE.TrainNum

#LEFT JOIN

SELECT TRAIN.TrainName,SCHEDULE.OperatingDay 
FROM TRAIN
LEFT JOIN SCHEDULE 
ON SCHEDULE.TrainNum = TRAIN.TrainNum;

# RIGHT JOIN 

SELECT TRAIN.TrainName, SCHEDULE.ArrivalTime, SCHEDULE.DepartureTime
FROM TRAIN
RIGHT JOIN SCHEDULE ON TRAIN.TrainNum = SCHEDULE.TrainNum
ORDER BY TRAIN.Source;


#FULL JOIN

SELECT TRAIN.TrainName,SCHEDULE.OperatingDay ,TRAIN.DisTravelled,SCHEDULE.ArrivalTime
FROM SCHEDULE
FULL JOIN TRAIN 
ON TRAIN.TrainNum = SCHEDULE.TrainNum;

#ADDING  A COLUMN STATION NAME 

ALTER TABLE TRAIN
ADD StationName varchar(20);
SELECT*FROM TRAIN

# DELETING A COLUMN STATION NAME

ALTER TABLE TRAIN
DROP COLUMN StationName
SELECT*FROM TRAIN

#MIN AND MAX OF DISTRAVELLED PASSENGERS

SELECT MIN(DisTravelled)
FROM TRAIN
WHERE Distravelled<50;

SELECT MAX(DisTravelled)
FROM TRAIN
WHERE Distravelled<50;

#COUNTING THE VALUES IN COLUMN TRAIN NAMES

SELECT COUNT(TrainName)
FROM TRAIN

#AVERAGE OF DISTRAVELLED 

SELECT AVG(DisTravelled)
FROM TRAIN;

#SUM OF DISTRAVELLED IN ALL TRAINS

SELECT SUM(DisTravelled)
FROM TRAIN;

#GIVING TEMPORARY NAME TO A COLUMN 

SELECT TrainNum AS TrainNumber
FROM TRAIN

# BETWEEN OPERATION

SELECT * FROM TRAIN
WHERE DisTravelled BETWEEN 1 AND 51;

# GROUP BY OPERATION

SELECT COUNT(TrainName), Destination
FROM TRAIN
GROUP BY Destination;


#ASCENDING ORDER & DESCENDING ORDER 

SELECT * FROM TRAIN
ORDER BY TrainName ASC

SELECT * FROM SCHEDULE
ORDER BY OperatingDay DESC