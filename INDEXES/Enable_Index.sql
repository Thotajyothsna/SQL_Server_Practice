--enabling disabled indexes
ALTER INDEX ix_salesman 
ON sales  
REBUILD;

--enabling all the disabled indexes
ALTER INDEX ALL ON sales
REBUILD;