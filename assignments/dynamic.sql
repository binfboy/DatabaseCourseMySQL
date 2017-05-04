--  example #2 ----  This procedure is looking for the customers whose spendings are at the top of the list. 
--  Sometimes, we want to know the top 1 some other time may be top 5 
use jrhoades_P2P2;
drop procedure if exists dynamic1;
DELIMITER $$
create procedure dynamic1(in pLength int)
begin
/*
-- To list the top paid customers 
-- test
        call dynamic1(1);
        call dynamic1(5);
*/         
-- declare sql_statement varchar(1000);  
-- can't use local variable. must use session variable 

set @sql_statement = concat('a.UniProtKB_Entry, a.Sequence_Length
												from UniProt a
                                                order by a.Sequence_Length
												limit ', convert(pLength, char(5)));    
	-- select sql_statement; 
	-- prepare stmt1 from @sql_statement;
    -- EXECUTE stmt1;
	-- DEALLOCATE PREPARE stmt1;
end 
$$ DELIMITER ;
  --  call dynamic1(5);
  --  select @sql_statement;