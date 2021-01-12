
    
--------------------------- INIT AND SEEEDING A TABLES ---------------------------------------------------------------------------------------------------------
drop table Product
create table Product
(
ProductId int identity(1,1) primary key,
Name varchar(100),
ListPrice int,
weight int,
color varchar(25)
)

insert into Product (Name, ListPrice, weight, color) values ('board',200,20,'white'),('car',4000,1000,'red'),('computer',300,2,'black'),('climbers shoos',100,1,'orange')
select * from Product

drop table TransactionHistory
create table TransactionHistory
(
TransactionId int identity(1,1) primary key,
ProductId int,
ActualCost int,
Quantity int,
TransactionType varchar(50),
TransactionDate date
)

insert into TransactionHistory ( ProductId, ActualCost, Quantity , TransactionType,TransactionDate ) 
values (1, 230, 1, 'money','2020-02-15'), (2, 4100, 1, 'money','2018-02-15'), (3, 330, 2, 'bank account','2020-08-08'), (4, 100, 3, 'money','2020-08-08')

ALTER TABLE TransactionHistory
ADD CONSTRAINT FK_TransactionHistory
FOREIGN KEY (ProductId) REFERENCES Product(ProductId);

------------------------------------------------------------------------------------------------------------------------------------------------------------------
use [T-SQL]
-- https://www.udemy.com/course/ms-sql-server-t-sql-concepts-raise-above-beginner-level/learn/lecture/9512552#overview

DECLARE @XML xml
 
SELECT @XML = '
<root>
	<Item ProductNumber="CA-5965" SafetyStock ="500" >321231231 </Item> 
	<Item ProductNumber="CB-2903" SafetyStock ="1000" ></Item>
	<Item ProductNumber="BE-2349" SafetyStock ="800" ></Item>
	<Item ProductNumber="AR-5381" SafetyStock ="1000" ></Item>
</root>'

SELECT @XML

select Tab.col.value('@ProductNumber','VARCHAR(20)') as ProductNumber,
	   Tab.col.value('@SafetyStock','int') as SafetyStock
	   from @XML.nodes('root/Item') as Tab(col)


drop PROCEDURE XML_filter
go
CREATE PROCEDURE XML_filter
	@xml XML
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    select t.c.value('@ProductNumber','VARCHAR(20)') as ProductNumber,
	   t.c.value('@SafetyStock','int') as SafetyStock
	   into #tempTable
	   from @XML.nodes('root/Item') as t(c)
END
GO