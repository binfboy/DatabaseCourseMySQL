/*Students will write two stored procedures and two triggers.

1) The first stored procedure doesn’t need any input parameter. It will answer an
interesting question relevant to your data. Each record needs to include these
four columns: schema_name, db_server_version, create_date, and update_date.
Save this stored procedure as the first file.


2) The second stored procedure needs one integer input and will call two other
stored procedures. When the input is 1, it will call the stored procedure
described in Task #1 above. When the input is 2, it will call the stored procedure
which was created in the last assignment to display the statistics of your data.
Save this stored procedure in the second file.


3) Write an after insert and an after delete triggers and add them to your disease
table whose PK has one and only one column DO ID. Add a test section in each
trigger to show how each trigger is tested. Save these two triggers in the third
file.


4) Write SQL statements to test each stored procedure. Write at least two test cases
with the first one using null to replace all the input parameters and the second
with non-null inputs. For each stored procedure created, save its test code to the
end of its comment section */

use jrhoades_P2P2;
drop procedure if exists spProtAvg;
DELIMITER $$
CREATE PROCEDURE spProtAvg()
begin
	/*
   The first stored procedure doesn’t need any input parameter. It will answer an
interesting question relevant to your data. Each record needs to include these
four columns: schema_name, db_server_version, create_date, and update_date.
Save this stored procedure as the first file.
    call spProtAvg;
	*/
    select distinct  a.UniProtKB_entry
			, a.Protein_Name
            , b.Alternate_Protein_Names
            , a.Sequence_Length
            , a.Targeted_Disease
            , a.`Mass(Da)`
            , a.`Mass(Da)`/a.Sequence_Length as `Avg_Mass_Per_AA(Da/AA)`
            , 'jrhoades_P2P2' as schema_name
            , a.db_server_version
            , date_format(create_date, '%m/%d/%Y') as Created_Date
            , date_format(update_date, '%m/%d/%Y') as Update_Date
	from UniProt a
	join vw_p2p_joined b 
	on a.UniProtKB_Entry = b.UniProtKB_Entry
    group by `Avg_Mass_Per_AA(Da/AA)`;
	-- where a.UniProtKB_Entry = in_UniProtKB_Entry;

end
$$
delimiter ;
  
    
    
USE jrhoades_P2P2;
drop procedure if exists sp72;
DELIMITER $$
create procedure sp72(in p_QuestionId int)
begin
/* 
The second stored procedure needs one integer input and will call two other
stored procedures. When the input is 1, it will call the stored procedure
described in Task #1 above (spProtAvg). When the input is 2, it will call the stored procedure
which was created in the last assignment to display the statistics of your data(sp1).
Save this stored procedure in the second file.

Use these to test, both shoudl return results:
call sp72(1); 
call sp72(2);
These should return invalid argument or case error:
call sp72();
call sp72(0);
call sp72(3);
    
*/
   case p_QuestionId 
		when 1 then call spProtAvg;
		when 2 then call sp1;
   end case;
    
end
$$
DELIMITER ;

    
    
    