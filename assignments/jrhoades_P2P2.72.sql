
    
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

Use these to test, both should return results:
call sp72(1); 
call sp72(2);


These should return invalid argument or case error:
call sp72(null);
Error Code: 1339. Case not found for CASE statement

call sp72();
Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.sp72; expected 1, got 0

call sp72(0);
Error Code: 1339. Case not found for CASE statement

call sp72(3);
Error Code: 1339. Case not found for CASE statement

    
*/
   case p_QuestionId 
		when 1 then call spProtAvg;
		when 2 then call sp1;
   end case;
    
end
$$
DELIMITER ;

    
    
    