/*This is my first stored proceedure and it contains the required items. 
 I am unsure of the exact poutput requirements, it outputs to a table*/

drop procedure if exists sp1;
DELIMITER $$
CREATE PROCEDURE sp1()
begin
	/*
   The first stored procedure will query the table db_statistics and generate
	a report about the statistics of your data. The report must have a date
	column to show when the data is collected.
    */
    select 'sp1_table' as tableName
			, a.ID
            , a.description
            , a.value
            , a.create_date
            , now()
            -- , count(DISTINCT description)
	from db_statistics a;

end
$$
delimiter ;




