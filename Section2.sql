use [T-SQL]

drop table Employee
create table Employee
(
	BusinesEntity int identity(1,1) primary key,
	NationalIDNumber int,
	LoginID varchar(25),
	OrganizationNode varchar(25),
	OrganizationLevel int,
	JobTitle varchar(100),
	BirthDate date,
	Gender varchar(1),
	HireDate date, 
	SalarideFlag bit
)

insert into Employee (
	 NationalIDNumber, LoginID, OrganizationNode,	OrganizationLevel, JobTitle, BirthDate,	Gender,	HireDate,SalarideFlag)
values
(23434123, 'ap\jv', '0xFF', 4, 'Chife Executive Officer', '1979-9-1', 'M', '2021-3-5', 1),
(23434123, 'ap\lv', '0xFF', 4, 'Vice President of Engineering', '1980-2-3', 'M', '2012-3-5', 1),
(23434123, 'ap\le', '0xFF', 4, 'Engineering Manager', '1980-2-3', 'F', '2012-3-5', 1),
(23434123, 'ap\nj', '0xFF', 4, 'Senior Tool Designer', '1995-2-3', 'F', '2012-3-5', 1),
(23434123, 'ap\lp', '0xFF', 4, 'Research and Development Manager', '1995-2-3', 'F', '2012-3-5', 1),
(23434123, 'ap\lp', '0xFF', 4, 'Research and Development Engineer', '1995-2-3', 'F', '2012-3-5', 1),
(23434123, 'ap\lp', '0xFF', 4, 'Research and Development Engineer', '1995-2-3', 'F', '2012-3-5', 1),
(23434123, 'ap\sl', '0xFF', 4, 'Research and Development Manager', '1995-2-3', 'F', '2012-3-5', 1)

select * from Employee