use ust;

create table trains(tno int, tname varchar(50), startpoint varchar(50), endpoint varchar(50));
insert into trains values (11096,'ahimsa express','pune junction','ahmedabad junction'),(12015,'ajmer shatabdi','new delhi','ajmer junction'),
(1651,'pune hbj special','pune junction','habibganj'), (13005, 'amristar mail','howrah junction','amristar junction'),
(12002,'bhopal shatabdi','new delhi','habibganj'),(12417,'prayag raj express','allahabad junction','new delhi'), 
(14673,'shaheed express', 'jaynagar','amristar junction'), (12314,'sealdah rajdhani','new delhi','sealdah'),
(12498,'shane punjab','amristar junction','new delhi'),(12451,'shram shakthi express','kanpur central','new delhi'),
(12030,'swarna shatabdi','amristar junction','new delhi');

create table passenger (pnr varchar(10),tno int,pname varchar(50),gender varchar(15),age int,travel_date date);
insert into passenger values('p001',13005,'r n agrawal','male',45,'2018-12-25'),('p002',12015,'p tiwary','male',28,'2018-11-10'), 
('p003',12015,'s tiwary','female',22,'2018-11-10'), ('p004',12030,'s k saxena','female',42,'2018-10-12'), 
('p005',12030,'s saxena','female',35,'2018-10-12'), ('p006',12030,'p saxena','female',12,'2018-10-12'), 
('p007',13005,'n s singh','male',52,'2018-05-09'), ('p008',12030,'j k sharma','male',65,'2018-05-09'),
('p009',12030,'r sharma','female',58,'2018-05-09');

-- To display details of all trains which starts from new delhi
select distinct t.tno, t.tname from trains t where startpoint='new delhi';

-- To display pnr,pname,gender and age of all passenger whose age is below 50
select p.pnr, p.pname, p.gender, p.age from passenger p where age<50;

-- To display total number of male and female passenger
select p.gender, count(*) as Total_Passenger from passenger p group by p.gender;

-- To display records of all passenger travelling in trains whose tno is 12015
select p.pname, p.gender,p.age from passenger p where tno=12015;



-- drop table passenger
