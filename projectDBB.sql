
CREATE TABLE projectdb.Hottel_staff
( fname              VARCHAR(20)NOT NULL,
  salary             DECIMAL(7,2),
  dateOfbirth        VARCHAR(10),
  employmentNum      INT(6),
  CONSTRAINT Hottel_staff_PK PRIMARY KEY (employmentNum)
  );
  
CREATE TABLE projectdb.Reservation
(reservationNum      INT(7)NOT NULL,
 dateOfcheckIn       VARCHAR(10),
 dateOfcheckOut      VARCHAR(10),
 RcustomerID         INT(7),
 CONSTRAINT Reservation_PK PRIMARY KEY (reservationNum)
 );
 
 
 
 CREATE TABLE projectdb.Customer
 ( CustomerName      VARCHAR(10),
   customerNum       INT(10),
   customerID        INT(7)NOT NULL,
   CemploymentNum    INT(7),
   CONSTRAINT Customer_PK PRIMARY KEY (customerID)
   );
  
CREATE TABLE projectdb.Hottel_resturant
(dishNum            INT(2)NOT NULL,
 calorices          INT(4),
 dishesName         VARCHAR(20),
 CONSTRAINT Hottel_resturant_PK PRIMARY KEY (dishNum)
 );
 
 CREATE TABLE projectdb.Event_Hottel 
 (eventNum         INT(3)NOT NULL,
  eventName        VARCHAR(20),
  dateOfevent      VARCHAR(10),
  zipcode          INT(4),
  state            VARCHAR(10),
  city             VARCHAR(10),
  street           VARCHAR(30),
  CONSTRAINT Event_Hottel_PK PRIMARY KEY (eventNum)
  );
 
CREATE TABLE projectdb.Bill
( amount            DECIMAL(4,2),
  billNum           INT(2) NOT NULL,  
  billName          VARCHAR(10),
  billDate          VARCHAR(10),
  billType          VARCHAR(10),
  CONSTRAINT Bill_PK PRIMARY KEY (billNum)
  );
  
CREATE TABLE projectdb.Hotel_survice  
( SurviceNum          INT(2) NOT NULL, 
  SurviceName         VARCHAR(20),
  ReservationDate     VARCHAR(10),
  HreservationNum     INT(6) NOT NULL,
 CONSTRAINT Hotel_survive_PK PRIMARY KEY (SurviceNum),
 CONSTRAINT Hotel_survice_FK FOREIGN KEY (HreservationNum) REFERENCES projectdb.Reservation(reservationNum)
 );
 
CREATE TABLE projectdb.Visit
( VcostumerID    INT(6) NOT NULL, 
 VeventNum       INT(3) NOT NULL,
 CONSTRAINT Visit_FK1 FOREIGN KEY (VcostumerID) REFERENCES projectdb.Customer(customerID),
 CONSTRAINT Visit_FK2 FOREIGN KEY (VeventNum) REFERENCES projectdb.Event_Hottel(eventNum)
 );
 
CREATE TABLE projectdb.ResturantsOrder 
(dishNum        INT(3) NOT NULL,
 costumerID     INT(6) NOT NULL,
 CONSTRAINT ResturantsOrder_FK1 FOREIGN KEY (dishNum) REFERENCES projectdb.Hottel_resturant(dishNum),
 CONSTRAINT ResturantsOrder_FK2 FOREIGN KEY (customerID) REFERENCES projectdb.Customer(customerID)
 );
 
CREATE TABLE projectdb.Room_num
(roomeNum           INT(3) NOT NULL,   
 reservationNum     INT(6) NOT NULL,
 CONSTRAINT Room_num_PK PRIMARY KEY (roomeNum) ,
 CONSTRAINT Room_num_FK FOREIGN KEY (ReservationNum) REFERENCES projectdb.Reservation(reservationNum)
 );
 
CREATE TABLE projectdb.Customers_Order
(ReservationNum    INT(6)  NOT NULL,
 costumerID        INT(6)  NOT NULL,  
 billNum           INT(6)  NOT NULL,
 CONSTRAINT CustomerOrder_FK1 FOREIGN KEY (ReservationNum) REFERENCES projectdb.Reservation(reservationNum),
 CONSTRAINT CustomerOrder_FK2 FOREIGN KEY (costumerID) REFERENCES projectdb.Customer(customerID),
 CONSTRAINT CustomerOrder_FK3 FOREIGN KEY (billNum) REFERENCES projectdb.Bill(billNum)
 );
 
 ####################################################
 INSERT INTO projectdb.hottel_staff 
 VALUES ('AHMAD' , 300.00 ,'1/3/1987' , 111222);
 INSERT INTO projectdb.hottel_staff 
 VALUES ('SARA' , 200.00 ,'7/8/1985' , 334422);
 INSERT INTO projectdb.hottel_staff 
 VALUES ('Khalid' , 1000.00 ,'5/3/1891' , 879384);
 INSERT INTO projectdb.hottel_staff 
 VALUES ('ARWA' , 3000.00 ,'6/1/1890' , 593029);
 INSERT INTO projectdb.hottel_staff 
 VALUES ('YAMEN' , 200.00 ,'6/1/1999' , 543829);
 ######################################################
 INSERT INTO projectdb.hottel_resturant
 VALUES (1 , 200 , 'Beef steak');
 INSERT INTO projectdb.hottel_resturant
 VALUES (2 , 350 , 'Mushroom soup');
 INSERT INTO projectdb.hottel_resturant
 VALUES (3 , 100 , 'salad');
 INSERT INTO projectdb.hottel_resturant
 VALUES (4 , 400 , 'chicken burger');
 INSERT INTO projectdb.hottel_resturant
 VALUES (5 , 340 , 'Beef Burger');
 ######################################################
 INSERT INTO projectdb.customer 
 VALUES ('Bander' , 1111 ,111111, 00000001);
 INSERT INTO projectdb.customer 
 VALUES ('Raghad' , 2222 ,111112 ,00000002);
 INSERT INTO projectdb.customer 
 VALUES ('Manar' , 3333 ,111113 , 00000003);
 INSERT INTO projectdb.customer 
 VALUES ('Nufe' ,4444 ,111114 ,00000004);
INSERT INTO projectdb.customer 
 VALUES ('Asell' , 5555 ,111115 , 00000005);
 INSERT INTO projectdb.customer 
 VALUES ('Gadi' ,6666,111116 , 00000006);
 ##################################################
  INSERT INTO projectdb.reservation
  VALUES ( 111122,'1/3/2021' ,'3/3/2021', 00000001);
  INSERT INTO projectdb.reservation
  VALUES ( 111133,'4/3/2021' ,'8/3/2021', 00000002);
  INSERT INTO projectdb.reservation
  VALUES ( 111144,'20/3/2021' ,'23/3/2021', 00000003);
  INSERT INTO projectdb.reservation
  VALUES ( 111155,'28/3/2021' ,'29/3/2021', 00000004);
  INSERT INTO projectdb.reservation
  VALUES ( 111166,'6/4/2021' ,'7/4/2021', 00000005);
  INSERT INTO projectdb.reservation
  VALUES(111177,'30/4/2021' ,'3/5/2021', 00000006);
  INSERT INTO projectdb.reservation
  VALUES(111188,'5/5/2021' ,'6/5/2021', 00000007);
  INSERT INTO projectdb.reservation
  VALUES(111199 ,'25/5/2021' ,'30/5/2021', 00000008);
  ######################
   INSERT INTO  projectdb.bill
   VALUES(10.00, 11 , 'Order' , '1/2/2021' , 'Resturant');
   INSERT INTO  projectdb.bill
   VALUES(20.00, 22 , 'Order2' , '1/3/2021' , 'Resturant');
   INSERT INTO  projectdb.bill
   VALUES(40.00, 33 , 'Order3' , '15/3/2021' , 'Services');
   INSERT INTO  projectdb.bill
   VALUES(99.00, 44 , 'Order4' , '2/4/2021' , 'Services');
   INSERT INTO  projectdb.bill
   VALUES(98.00,55 , 'Order5' , '28/4/2021' , 'Resturant');
   #########################################
   INSERT INTO projectdb.Event_Hottel 
   VALUES(1,'Jewelry even', '1/1/2021' , 0001 ,'existing ','Jeddah',' Abhur');
   INSERT INTO projectdb.Event_Hottel 
   VALUES(2,'omar dyab DJ', '6/1/2021' , 0011 ,'existing ','Jeddah',' tahlia');
   INSERT INTO projectdb.Event_Hottel 
   VALUES(3,'Food event', '12/1/2021' , 0111 ,'setting up','makkah',' awali');
   INSERT INTO projectdb.Event_Hottel 
   VALUES(4,'stage show', '15/1/2021' , 1111 ,'setting up','Jwddah',' corniche');
   INSERT INTO projectdb.Event_Hottel 
   VALUES(5,'formula', '1/2/2021' , 1112 ,'setting up','Jwddah',' corniche');
   ##############################
    INSERT INTO projectdb.Hotel_survice 
    VALUES(11,'Laundry', '1/1/2021' ,  111122 );
    INSERT INTO projectdb.Hotel_survice 
    VALUES(12,'spa'  , '2/1/2021' , 111133 );
    INSERT INTO projectdb.Hotel_survice 
    VALUES(13,'car wash', '3/1/2021' , 111144 );
 INSERT INTO projectdb.Hotel_survice 
    VALUES(22,'buying clothes', '4/1/2021' , 111166 );
 INSERT INTO projectdb.Hotel_survice 
    VALUES(21,'free WI-FI', '5/1/2021' , 111199 );
   ##########################
   INSERT INTO ResturantsOrder 
   VALUES(1,111111);
    INSERT INTO ResturantsOrder 
   VALUES(2,111112);
    INSERT INTO ResturantsOrder 
   VALUES(3,111113);
    INSERT INTO ResturantsOrder 
   VALUES(4,111114);
    INSERT INTO ResturantsOrder 
   VALUES(5,111115);
   ################################
   INSERT INTO projectdb.Room_num
   VALUES('113',111133);
   INSERT INTO projectdb.Room_num
   VALUES('423',111199);
   INSERT INTO projectdb.Room_num
   VALUES('334',111144);
   INSERT INTO projectdb.Room_num
   VALUES('331',111166);
   INSERT INTO projectdb.Room_num
   VALUES('110',111122);
   INSERT INTO projectdb.Room_num
   VALUES('116',111155);
   ##################################
   INSERT INTO projectdb.Visit
   VALUES(111111,2);
   INSERT INTO projectdb.Visit
   VALUES(111112,3);
   INSERT INTO projectdb.Visit
   VALUES(111113,1);
   INSERT INTO projectdb.Visit
   VALUES(111114,5);
   INSERT INTO projectdb.Visit
   VALUES(111115,4);
   ############################
    INSERT INTO projectdb.Customers_Order
   VALUES(111155,111112,11);
    INSERT INTO projectdb.Customers_Order
   VALUES(111133,111114,22);
    INSERT INTO projectdb.Customers_Order
   VALUES(111122,111111,33);
    INSERT INTO projectdb.Customers_Order
   VALUES(111199,111115,44);
    INSERT INTO projectdb.Customers_Order
   VALUES(111166,111113,55);
   ############################
   SELECT  SurviceNum,SurviceName
   FROM    projectdb.Hotel_survice 
   WHERE   SurviceNum= 12;
   
   SELECT  SurviceNum,SurviceName,r.reservationNum,dateOfcheckIn,dateOfcheckOut
   FROM    projectdb.Hotel_survice h,  projectdb.Reservation r 
   WHERE   h.HreservationNum=r.reservationNum ;
   
   SELECT *
   FROM projectdb.Bill
   WHERE  billNum IN(SELECT billNum 
                        FROM  projectdb.Customers_Order
                        WHERE billNum  BETWEEN 22 AND 44 );
   
   SELECT *
   FROM   projectdb.Event_Hottel 
   ORDER BY  eventNum DESC;  #descending order#
   
   SELECT fname,salary,employmentNum
   FROM   projectdb.Hottel_staff
   GROUP BY fname
   HAVING  salary > 100.00;
   
SELECT *
FROM    projectdb.Event_Hottel 
GROUP By eventNum
HAVING eventNum=3;

SELECT 
 SUM(amount) As SumOfAmount, billType 
FROM projectdb.Bill 
GROUP By billType;

SELECT
SurviceNum , ReservationDate , HreservationNum
FROM projectdb.Hotel_survice
GROUP BY  SurviceNum
ORDER BY SurviceNum;

SELECT *
FROM projectdb.Visit
Order by VcostumerID DESC;

SELECT 
dishNum , dishesName
FROM     projectdb.Hottel_resturant
WHERE   dishNum=4 AND dishesName='chicken burger';
####################################################

update projectdb.Hottel_staff
set salary =salary*1.1;

update projectdb.Bill 
set Amount=Amount*1.1,Billname ='order'
where Billname ='Order2' ;

delete from projectdb.Customers_Order 
where billNum =33;

delete from projectdb.Visit
where  VcostumerID  =111111;

   