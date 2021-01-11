
-- https://www.udemy.com/course/ms-sql-server-t-sql-concepts-raise-above-beginner-level/learn/lecture/9512544#questions

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