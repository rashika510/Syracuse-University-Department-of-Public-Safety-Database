 
create table Account
(
Acc_ID Char(5) Not Null,
UFname Varchar(10) Not Null,
ULname Varchar(10) Not Null,
UType Char(8) Not Null,
Constraint PrAccount_PK Primary Key(Acc_ID),
Ucontact Char(10) Not Null,
Uemail Varchar(20) Not Null,
Uaddress Varchar(20) Not Null
);
create table ResidentialHalls
(
Hall_ID Char(4) Not Null,
HLocation Varchar(10) Not Null,
HName Varchar(10) Not Null,
STime Varchar(10) Not Null,
Constraint ReHall_PK Primary Key(Hall_ID)
);
create table Employee
(
Emp_ID Char(4) Not Null,
Acc_ID Char(5) Not Null,
Constraint PrEmp_PK Primary Key(Emp_ID),
Constraint PrEmployee_FK Foreign Key (Acc_ID) References Account(Acc_ID)
);
drop table Employee;
create table EShift
(
Sh_ID Char(4) Not Null,
SLocation varchar(10) Not Null,
STime varchar(10) Not Null,
SDate date Not Null,
Constraint PrEShift_PK Primary Key(Sh_ID)
);
create table ESchedule
(
Es_ID Char(5) Not Null,
Emp_ID Char(4) Not Null,
Sh_ID Char(4) Not Null,
Constraint PrSchedule_PK Primary Key(Es_ID),
Constraint PrSchedule_FK Foreign Key(Sh_ID) references EShift(Sh_ID),
Constraint PrSchedule_FK2 Foreign Key(Emp_ID) references Employee(Emp_ID)
);
;
create table Manager
(
M_ID Char(4) Not Null,
Acc_ID Char(5) Not Null,
M_FirstName Varchar(10) Not Null,
M_LastName Varchar(10) Not Null,
M_contact char(10) Not Null,
Constraint PrManager_PK Primary Key(M_ID),
Constraint PrManager_FK Foreign Key(Acc_ID) references Account(Acc_ID)
);



create table EmpHall
(
Eh_ID char(4) Not Null,
Emp_ID char(4) Not Null,
Hall_ID char(4) Not Null,
Constraint PrEmpHall_PK Primary Key(Eh_ID),
Constraint PrEmpHall_FK Foreign Key(Hall_ID) references ResidentialHalls(Hall_ID),
Constraint PrEmpHall_FK2 Foreign Key(Emp_ID) references Employee(Emp_ID)
);
drop table EmpHall
create table PickedShift
(
Pick_ID char(4) Not Null,
Es_ID Char(5) Not Null,
Constraint PrPickedShift_PK Primary Key(Pick_Id),
Constraint PrPickedShift_FK Foreign Key(Es_ID) references ESchedule(Es_ID)
);

create table DroppedShift
(
Drop_ID char(4) Not Null,
Approved char(3) Not Null,
Es_ID Char(5) Not Null,
Constraint PrDroppedShift_FK Foreign Key(Es_ID) references ESchedule(Es_ID)
);

drop table Account;
drop table Hall;
drop table ResidentialHalls;
drop table Employee;
drop table EmpHall;
drop table ESchedule
drop table EShift;
drop table Employee;
drop table Manager;
drop table PickedShift
drop table DroppedShift