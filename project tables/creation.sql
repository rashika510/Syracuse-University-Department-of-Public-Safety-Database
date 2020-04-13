Insert into Account Values('A1000','Rashika','Singh','Employee','3158802081','rsingh37@syr.edu','118 Concord');
Insert into Account Values('A1001','Alex','Shaw','Employee','3158802568','ashaw@syr.edu','103 Trinity');
Insert into Account Values('A1002','Kareen','John','Manager','3156759021','karen55@syr.edu','1021 Harvard');
Insert into Account Values('A1003','Sue','Hopkins','Employee','3158651244','suehop@syr.edu','159 Westcott');
Insert into Account Values('A1004','Rahul','Rathod','Manager','3156799859','rnrathod@syr.edu','100 Comstock');


Insert into ResidentialHalls Values('H001','Van Buren','Brockway','4:45pm-8pm');
Insert into ResidentialHalls Values('H002','College Pl','Walnut','1:30am-6am');
Insert into ResidentialHalls Values('H003','Comstock','Haven','4:45pm-8pm');
Insert into ResidentialHalls Values('H004','Waverly','Kimmel','4:45pm-8pm');
Insert into ResidentialHalls Values('H005','Euclid','Watson','7:45pm-1am');

Insert into Employee Values('Em00','A1000');
Insert into Employee Values('Em01','A1001');
Insert into Employee Values('Em04','A1003');
/*Insert into Employee Values('Em02','A1006');
Insert into Employee Values('Em03','A1010');*/

Insert into ESchedule Values('Sc01','Em00','S100');
/*Insert into ESchedule Values('Sc02','Em03','S101');*/
Insert into ESchedule Values('Sc03','Em01','S111');
/*Insert into ESchedule Values('Sc04','Em02','S103');*/
Insert into ESchedule Values('Sc05','Em04','S104');


insert into EShift Values('S100','Walnut','4:45pm-8pm','05/10/2019');
insert into EShift Values('S101','Waverly','7:45-1am','07/22/2019');
insert into EShift Values('S111','Ernie','4:45pm-8pm','11/10/2019');
insert into EShift Values('S103','Kimmel','1:15am-6am','01/19/2019');
insert into EShift Values('S104','Haven','7:45pm-1am','04/12/2019');

insert into Manager Values('M100','A1002','Kareen','John','3156759021');
insert into Manager Values('M101','A1004','Rahul','Rathod','3156799859');

insert into EmpHall Values('Eh1','Em00','H001');
insert into EmpHall Values('Eh2','Em01','H002');
insert into EmpHall Values('Eh3','Em04','H003');

insert into DroppedShift Values('D258','Yes','Sc01');
insert into DroppedShift Values('D259','No','Sc03');
insert into DroppedShift Values('D260','Yes','Sc05');


insert into PickedShift Values('P200','Sc01');
insert into PickedShift Values('P201','Sc03');
insert into PickedShift Values('P202','Sc05');

