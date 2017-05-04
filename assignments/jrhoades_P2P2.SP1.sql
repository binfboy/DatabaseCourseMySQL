drop procedure if exists sp1;
DELIMITER $$
CREATE PROCEDURE sp1()
begin
	/*
   The first stored procedure will query the table db_statistics and generate
	a report about the statistics of your data. The report must have a date
	column to show when the data is collected.
    use this to test:
    call jrhoades_P2P2.sp1();
    works fine
    call jrhoades_P2P2.sp1(null);
    Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.sp1; expected 0, got 1
	call jrhoades_P2P2.sp1(1);
    Error Code: 1318. Incorrect number of arguments for PROCEDURE jrhoades_P2P2.sp1; expected 0, got 1

    */
    select  a.ID
            , a.description
            , a.value
            , a.create_date
		from db_statistics a;

end
$$
delimiter ;

-- instead of listing columns, just use select *