


DECLARE @cars xml
 
SELECT @cars = C
FROM OPENROWSET (BULK 'D:\Janez Vegan DMA\SQL-T Advanced\Repository\Data\Root.xml', SINGLE_BLOB) AS Cars(C)
    
SELECT @cars

select Tab.col.value('@ProductNumber','VARCHAR(20)') as ProductNumber,
	   Tab.col.value('@SafetyStock','int') as SafetyStock
	   from @cars.nodes('root/Item') as Tab(col)